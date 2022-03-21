package egovframework.example.sample.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.sample.service.ReplyService;
import egovframework.example.sample.service.ReplyVO;

@Service("replyService")
public class ReplyServiceImpl implements ReplyService{

	@Resource(name="replyDAO")
	public ReplyDAO replyDAO;
	
	@Override
	public int insert(ReplyVO vo) {
		return replyDAO.insertNreply(vo);
	}

	@Override
	public void select(ReplyVO vo) {
		replyDAO.selectNreply(vo);
	}

	@Override
	public int deleteNreply(Long r_unq) {
		return replyDAO.deleteNreply(r_unq);
	}

	@Override
	public int updateNreply(ReplyVO reply) {
		return replyDAO.updateNreply(reply);
	}

}
