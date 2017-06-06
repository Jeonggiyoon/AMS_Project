package org.ams.persistence;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.ams.domain.BoardVO;
import org.ams.domain.UserVO;
import org.ams.dto.LoginDTO;

@Repository
public class UserDAOImpl implements UserDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace ="org.ams.mapper.UserMapper";	

	@Override
	public UserVO login(LoginDTO dto) throws Exception {
		
		return session.selectOne(namespace +".login", dto);
	}
	
  @Override
  public void keepLogin(String snum, String sessionId, Date next) {

    Map<String, Object> paramMap = new HashMap<String, Object>();
    paramMap.put("snum", snum);
    paramMap.put("sessionId", sessionId);
    paramMap.put("next", next);
    
    session.update(namespace+".keepLogin", paramMap);
    
  }

  @Override
  public UserVO checkUserWithSessionKey(String value) {

    return session.selectOne(namespace +".checkUserWithSessionKey", value);
  }	
  
  @Override
  public void member(UserVO vo) throws Exception {
    session.insert(namespace + ".member", vo);
  }

}
