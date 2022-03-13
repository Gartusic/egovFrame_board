package egovframework.example.sample.service;

import java.util.List;

public interface BoardService {
	
//	게시글 저장
	public String insertNBoard(BoardVO vo) throws Exception;
	
//	화면 목록
	public List<?> selectNBoardList(BoardVO vo) throws Exception;
	
//	게시글 삭제
	public void deleteNBoard(BoardVO vo) throws Exception;

	public String selectNBoardDetail(BoardVO vo) throws Exception;
}
