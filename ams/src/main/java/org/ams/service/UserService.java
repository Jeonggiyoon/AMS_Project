package org.ams.service;

import java.util.Date;

import org.ams.domain.BoardVO;
import org.ams.domain.UserVO;
import org.ams.dto.LoginDTO;

public interface UserService {

  public UserVO login(LoginDTO dto) throws Exception;

  public void keepLogin(String snum, String sessionId, Date next)throws Exception;
  
  public UserVO checkLoginBefore(String value);
  
  public void member(UserVO user) throws Exception;
}
