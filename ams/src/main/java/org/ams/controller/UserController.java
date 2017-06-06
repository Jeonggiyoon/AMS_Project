package org.ams.controller;

import java.util.Date;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.WebUtils;
import org.ams.domain.BoardVO;
import org.ams.domain.UserVO;
import org.ams.dto.LoginDTO;
import org.ams.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


@Controller
@RequestMapping("/user/*")
public class UserController {
	
  private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

  @Inject
  private UserService service;

  @RequestMapping(value = "/login", method = RequestMethod.GET)
  public void loginGET(@ModelAttribute("dto") LoginDTO dto) {

  }

/*   @RequestMapping(value = "/loginPost", method = RequestMethod.POST)
   public void loginPOST(LoginDTO dto, HttpSession session, Model model)
   throws Exception {
  
   UserVO vo = service.login(dto);
  
   if (vo == null) {
   return;
   }
  
   model.addAttribute("userVO", vo);
  
   }
*/
  @RequestMapping(value = "/loginPost", method = RequestMethod.POST)
  public void loginPOST(LoginDTO dto, HttpSession session, Model model) throws Exception {

    UserVO vo = service.login(dto);

    if (vo == null) {
      return;
    }

    model.addAttribute("userVO", vo);

    if (dto.isUseCookie()) {

      int amount = 60 * 60 * 24 * 7;

      Date sessionLimit = new Date(System.currentTimeMillis() + (1000 * amount));

      service.keepLogin(vo.getSnum(), session.getId(), sessionLimit);
    }

  }

  @RequestMapping(value = "/logout", method = RequestMethod.GET)
  public void logout(HttpServletRequest request, 
      HttpServletResponse response, HttpSession session) throws Exception {

    Object obj = session.getAttribute("login");

    if (obj != null) {
      UserVO vo = (UserVO) obj;

      session.removeAttribute("login");
      session.invalidate();

      Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");

      if (loginCookie != null) {
        loginCookie.setPath("/");
        loginCookie.setMaxAge(0);
        response.addCookie(loginCookie);
        service.keepLogin(vo.getSnum(), session.getId(), new Date());
      }
    }
  }
  
  @RequestMapping(value = "/member", method = RequestMethod.GET)
  public void memberGET (UserVO user, Model model, RedirectAttributes rttr) throws Exception {
	    logger.info("member get ...........");
	    
	    //service.member(user);
	    
	    //rttr.addFlashAttribute("msg", "SUCCESS");
	    //return "redirect:/board/listAll";
	    
	    //return "redirect:/user/login";
  }
  
  @RequestMapping(value = "/member", method = RequestMethod.POST)
  public String memberPOST(UserVO user, Model model,  RedirectAttributes rttr) throws Exception {
    
    logger.info("member post ...........");
    
    service.member(user);
    
    rttr.addFlashAttribute("msg", "SUCCESS");  
    return "redirect:/user/login";
  }

}
