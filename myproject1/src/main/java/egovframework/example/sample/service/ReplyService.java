package egovframework.example.sample.service;

public interface ReplyService {
//	댓글쓰기
	public int insert(ReplyVO vo);
	
//	댓글 보기
	public void select(ReplyVO vo);
	
//	댓글 삭제
	public int deleteNreply(Long r_unq);
//	댓글 수정
	public int updateNreply(ReplyVO reply);
	
}