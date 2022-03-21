package egovframework.example.sample.web;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import egovframework.example.sample.service.ReplyService;
import egovframework.example.sample.service.ReplyVO;

@RestController
public class ReplyController {
	@Resource(name="replyService") // service 와 연결해주는 역할
	private ReplyService replyService;
	
	@RequestMapping(value="/new",
			consumes = "application/json",
			produces = {MediaType.TEXT_PLAIN_VALUE} //텍스트 타입만
			)
	public ResponseEntity<String> create(@RequestBody ReplyVO vo){
		int insertCount = replyService.insert(vo); //댓글 작성
		return insertCount == 1 // 댓글 작성 결과가 true이면?
				? new ResponseEntity<>("success",HttpStatus.OK) // 처리 결과가 정상적이면 이것을 호출
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR); // 처리 결과가 비정상적일 때
				//삼항연산자 처리
	}
	
	
//	@GetMapping(value="/pages/{unq}/{page}",
//			produces = {
//					MediaType.APPLICATION_XML_VALUE,
//					MediaType.APPLICATION_JSON_UTF8_VALUE })
//	public ResponseEntity<List<ReplyVO>> getList(
//			@PathVariable("page") int page,
//			@PathVariable("unq") Long unq){
//			
//			}
	
	
	
}
