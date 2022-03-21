package egovframework.example.sample.service.impl;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.ReplyVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("replyDAO")
public class ReplyDAO extends EgovAbstractDAO{
	
//	댓글쓰기
	public int insertNreply(ReplyVO vo) {
		return (int) insert("replyDAO.insertNreply",vo);
	};
	
//	댓글 보기
	public void selectNreply(ReplyVO vo) {
		select("replyDAO.selectNreply", vo);
	}
//	댓글 삭제
	public int deleteNreply(Long r_unq) {
		return (int) delete("replyDAO.deleteNreply",r_unq);
	}
//	댓글 수정
	public int updateNreply(ReplyVO reply) {
		return (int) update("replyDAO.updateNreply", reply);
	}
	
}
