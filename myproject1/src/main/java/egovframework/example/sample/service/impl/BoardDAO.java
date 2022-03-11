package egovframework.example.sample.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.BoardVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

//sql과 연결되는 메소드들?
@Repository("boardDAO")
public class BoardDAO extends EgovAbstractDAO{
	public String insertNBoard(BoardVO vo) {
		return (String) insert("boardDAO.insertNBoard", vo);
	}

	public List<?> selectNBoardList(BoardVO vo) {
//				list("sql.xml에서 사용될 id명",매개변수);
		return list("boardDAO.selectNBoard",vo);
	}
	
	
}
