package egovframework.example.sample.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.example.sample.service.BoardService;
import egovframework.example.sample.service.BoardVO;

@Controller
public class BoardController {
	
	@Resource(name="boardService") // service 와 연결해주는 역할
	private BoardService boardService;
	
	// 게시글 작성 화면
	@RequestMapping(value="boardWrite.do")
	public String boardWrite(){
		return "board/boardWrite";
	}
	
	//게시글 쓰기
	@RequestMapping(value="boardWriteSave.do")
	@ResponseBody
	public String insertNBoard(BoardVO vo) throws Exception{
		// result = null;
		String result = boardService.insertNBoard(vo);
		String msg = "";
		if(result == null) msg = "ok";
		else msg = "fail";
		return msg;
	}
	
	@RequestMapping("/boardList.do")
	public String selectNBoardList(BoardVO vo, ModelMap model) throws Exception{
		List<?> list = boardService.selectNBoardList(vo);
		System.out.println("list :" + list);
		
//						(jsp에서 사용할 이름, controller에 현재 정의된 이름)
		model.addAttribute("resultList", list);
		return "board/boardList";
	}
	
}
