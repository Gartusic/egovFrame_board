package egovframework.example.sample.service.impl;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.ReplyVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("replyDAO")
public class ReplyDAO extends EgovAbstractDAO{
	public int insert(ReplyVO vo) {
		return (int) insert("replyDAO.insertNreply",vo);
	};
}
