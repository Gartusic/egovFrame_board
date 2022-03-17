package egovframework.example.sample.service;

import java.util.Date;

public class ReplyVO {
	private Long r_unq;
	private Long unq;
	private String reply;
	private String replyer;
	private Date replyDate;
	private Date updatedate;
	
	public Long getR_unq() {
		return r_unq;
	}
	public void setR_unq(Long r_unq) {
		this.r_unq = r_unq;
	}
	public Long getUnq() {
		return unq;
	}
	public void setUnq(Long unq) {
		this.unq = unq;
	}
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	public String getReplyer() {
		return replyer;
	}
	public void setReplyer(String replyer) {
		this.replyer = replyer;
	}
	public Date getReplyDate() {
		return replyDate;
	}
	public void setReplyDate(Date replyDate) {
		this.replyDate = replyDate;
	}
	public Date getUpdatedate() {
		return updatedate;
	}
	public void setUpdatedate(Date updatedate) {
		this.updatedate = updatedate;
	}
}
