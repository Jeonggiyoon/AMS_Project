package org.ams.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.ams.domain.BoardVO;
import org.ams.persistence.BoardDAO;


@Service
public class BoardServiceImpl implements BoardService {
	/*
	static int result;*/
	

  @Inject
  private BoardDAO dao;

  @Override
  public void regist(BoardVO board) throws Exception {	  
	  
	  int result, sum, cin, cout, value =0;
	  
	  cin = board.getCin();
	  cout = board.getCout();
	  
	  sum = cin - cout;
  
	  result= board.getTotal();
	  
	  value = sum + result;
	  
	  result = value;
	  
	  board.setTotal(result);
	  	  
    dao.create(board);
  }

  @Override
  public BoardVO read(Integer bno) throws Exception {
    return dao.read(bno);
  }
  
  @Override
  public List<BoardVO> maxread() throws Exception {
    return dao.maxread();
  }

  @Override
  public void modify(BoardVO board) throws Exception {
	  
	  int result, sum, cin, cout, value =0;
	  
	  cin = board.getCin();
	  cout = board.getCout();
	  
	  sum = cin - cout;
  
	  result = board.getTotal();
	  
	  value = sum + result;
	  
	  result = value;
	  
	  board.setTotal(result);
	  
    dao.update(board);
  }

  @Override
  public void remove(Integer bno) throws Exception {
    dao.delete(bno);
  }

  @Override
  public List<BoardVO> listAll() throws Exception {
	  
    return dao.listAll();
  }


}
