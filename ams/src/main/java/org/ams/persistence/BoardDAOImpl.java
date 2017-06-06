package org.ams.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.ams.domain.BoardVO;


@Repository
public class BoardDAOImpl implements BoardDAO {

  @Inject
  private SqlSession session;

  private static String namespace = "org.ams.mapper.BoardMapper";

  @Override
  public void create(BoardVO vo) throws Exception {
/*	  
	  int result, sum, cin, cout;
	  
	  BoardVO vo1 = new BoardVO();
	  
	  cin = vo1.getCin();
	  cout =vo1.getCout();
	  
	  sum = cin - cout;
	  
	  result = sum;
	    
	  result= vo1.getTotal();
	  */
	  
	  
/*	  value = result + sum;
	  
	  result= value;*/
	  
    session.insert(namespace + ".create", vo);
  }

  @Override
  public BoardVO read(Integer bno) throws Exception {
    return session.selectOne(namespace + ".read", bno);
  }
  
  @Override
  public List<BoardVO> maxread() throws Exception {
    return session.selectList(namespace + ".maxread");
  }

  @Override
  public void update(BoardVO vo) throws Exception {
    session.update(namespace + ".update", vo);
  }

  @Override
  public void delete(Integer bno) throws Exception {
    session.delete(namespace + ".delete", bno);
  }

  @Override
  public List<BoardVO> listAll() throws Exception {
    return session.selectList(namespace + ".listAll");
  }


}
