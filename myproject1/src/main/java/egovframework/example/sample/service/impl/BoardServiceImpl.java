package egovframework.example.sample.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.sample.service.BoardService;
import egovframework.example.sample.service.BoardVO;
import egovframework.example.sample.service.PagingVO;


//컨트롤러와 연결되는 설정
@Service("boardService") // Controller에 삽입하는 @Resource와 동일한 이름으로 기입해야한다.
public class BoardServiceImpl implements BoardService{

	@Resource(name="boardDAO")
	public BoardDAO boardDAO;
	
	@Override
	public String insertNBoard(BoardVO vo) throws Exception {
		
		return boardDAO.insertNBoard(vo);
	}

	@Override
	public List<?> selectNBoardList(BoardVO vo) throws Exception {
		return boardDAO.selectNBoardList(vo);
	}

	@Override
	public void deleteBoard(int unq) throws Exception {
		boardDAO.deleteBoard(unq);
	}

	@Override
	public BoardVO selectNBoardDetail(int unq) throws Exception {
		return boardDAO.selectNBoardDetail(unq);
	}
	
	@Override
	public int updateNBoard(BoardVO vo) throws Exception {
		return boardDAO.updateNBoard(vo);
	}
	
	
	

	
//	페이징
	@Override
	public int countBoard() throws Exception {
		return boardDAO.countBoard();
	}

	@Override
	public List<?> selectPage(PagingVO vo) throws Exception {
		return boardDAO.selectPage(vo);
	}

	@Override
	public void updateHits(BoardVO vo) throws Exception {
		boardDAO.updateHits(vo);
		
	}



}
