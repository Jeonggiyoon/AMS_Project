package org.ams.service;

import java.util.Date;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.ams.domain.UserVO;
import org.ams.dto.LoginDTO;
import org.ams.persistence.UserDAO;

@Service
public class UserServiceImpl implements UserService {

  @Inject
  private UserDAO dao;

  @Override
  public UserVO login(LoginDTO dto) throws Exception {

    return dao.login(dto);
  }
  
  @Override
  public void keepLogin(String snum, String sessionId, Date next)
      throws Exception {
    
    dao.keepLogin(snum, sessionId, next);
    
  }

  @Override
  public UserVO checkLoginBefore(String value) {
    
    return dao.checkUserWithSessionKey(value);
  }
}
