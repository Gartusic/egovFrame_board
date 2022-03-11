package egovframework.example.sample.service;

public class BoardVO {
	//캡슐화 : 접근지정자
	private int unq;
	private String title;
	private String pass; // 보안 문제때문에 프라이빗으로 하는 거 뿐?
	public String name;
	public  String content;
	public int hits;
	public String rdate;
	
	
	public int getUnq() {
		return unq;
	}
	public void setUnq(int unq) {
		this.unq = unq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	//get/set 메소드 처리, 자동완성기능 이용.
	
	
	
	
}
