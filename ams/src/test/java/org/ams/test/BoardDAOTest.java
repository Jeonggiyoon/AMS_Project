package org.ams.test;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;
import org.ams.domain.BoardVO;
import org.ams.persistence.BoardDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
public class BoardDAOTest {

  @Inject
  private BoardDAO dao;

  private static Logger logger = LoggerFactory.getLogger(BoardDAOTest.class);

  @Test
  public void testCreate() throws Exception {

    BoardVO board = new BoardVO();
    board.setLot("40mm");
    board.setCin(10);
    board.setCout(5);
    board.setTotal(5);
    board.setWriter("Á¤ÇÏ»ç");
    dao.create(board);
  }

  @Test
  public void testRead() throws Exception {

    logger.info(dao.read(1).toString());
  }

  @Test
  public void testUpdate() throws Exception {

    BoardVO board = new BoardVO();
    board.setBno(1);
    board.setLot("20mm");
    board.setCin(20);
    board.setCout(10);
    board.setTotal(10);
    dao.update(board);
  }

  @Test
  public void testDelete() throws Exception {

    dao.delete(1);
  }

}
