package egovframework.example.sample.service;

import java.util.List;

public interface BoardService {
	
//	게시글 저장
	public String insertNBoard(BoardVO vo) throws Exception;
	
//	화면 목록
	public List<?> selectNBoardList(BoardVO vo) throws Exception;
	
//	비밀번호 확인
	public int selectNBoardPass(BoardVO vo) throws Exception;
	
//	게시글 삭제
	public void deleteBoard(int unq) throws Exception;

//	상세화면
	public BoardVO selectNBoardDetail(int unq) throws Exception;
	
//	게시글 수정
	public int updateNBoard(BoardVO vo) throws Exception;

	
}
