package org.ams.persistence;

import java.util.Date;

import org.ams.domain.UserVO;
import org.ams.dto.LoginDTO;

public interface UserDAO {

  public UserVO login(LoginDTO dto)throws Exception;

  public void keepLogin(String snum, String sessionId, Date next);
  
  public UserVO checkUserWithSessionKey(String value);	
  
  public void member (UserVO vo)throws Exception;
}



