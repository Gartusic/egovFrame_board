package egovframework.example.sample.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.BoardVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

//sql과 연결되는 메소드들 = mapper.java = DAO
@Repository("boardDAO")
public class BoardDAO extends EgovAbstractDAO{
	
//	글 등록
	public String insertNBoard(BoardVO vo) {
		return (String) insert("boardDAO.insertNBoard", vo);
	}

//	글 목록 보기
	public List<?> selectNBoardList(BoardVO vo) {
//				list("sql.xml에서 사용될 id명",매개변수);
		return list("boardDAO.selectNBoard",vo);
	}
	
//	게시글 삭제
	public void deleteNBoard(BoardVO vo) {
		delete("boardDAO.deleteNBoard", vo);
	}
//	게시글 상세화면
	public String selectNBoardDetail(BoardVO vo) {
		return (String) select("boardDAO.selectNBoardDetail", vo);
	}
	
	
}
