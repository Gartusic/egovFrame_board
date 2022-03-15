package egovframework.example.sample.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

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
	
//	게시글 목록 화면
	@RequestMapping("/boardList.do")
	public String selectNBoardList(BoardVO vo, ModelMap model) throws Exception{
		List<?> list = boardService.selectNBoardList(vo);
		System.out.println("list :" + list);
		
//						(jsp에서 사용할 이름, controller에 현재 정의된 이름)
		model.addAttribute("resultList", list);
		return "board/boardList";
	}
	
//	게시글 상세화면
	@RequestMapping("/boardDetail.do")
	public String selectNBoardDetail(BoardVO vo, ModelMap model) throws Exception{
		BoardVO boardVO = boardService.selectNBoardDetail(vo.getUnq());
		
		String content = boardVO.getContent(); // \n
		boardVO.setContent(content.replace("\n", "<br>")); // 줄바꿈 되게 하는 코드
		
		model.addAttribute("boardDetail", boardVO);
		System.out.println("unq:" + vo.getUnq());
		return "board/boardDetail";
	}
//	
//	
////	비밀번호 확인
//	@RequestMapping("/passWrite.do")
//	public String selectNBoardPass(int unq, ModelMap model) {
//		model.addAttribute("unq", unq);
//		return "board/passWrite";
//	}
//	
////	게시글 삭제
//	@RequestMapping("/boardDelete.do")
//	@ResponseBody // 자바 객체 <-> http응답 바디로 변환하는 역할
//	public String deleteBoard(BoardVO vo) throws Exception {
//		
////		암호일치검사 1= true, 0 = false
//		
//		int result = 0;
//		int count = boardService.selectNBoardPass(vo);
//		if(count == 1) {
//			result = boardService.deleteBoard(vo);
//		} else if(count ==0) {
//			result = -1;
//		}
//
//		return result+"";
//	}
	
//	게시글 삭제
	@RequestMapping("/boardDelete.do")
	public String deleteBoard(int unq) throws Exception {
		
		boardService.deleteBoard(unq);
		return "redirect:/boardList.do";
	}
	
//	수정화면으로 이동
	@RequestMapping("boardModifyWrite.do")
	public String selectNBoardModifyWrite(BoardVO vo, ModelMap model)
											throws Exception{
		BoardVO boardVO = boardService.selectNBoardDetail(vo.getUnq());
		model.addAttribute("BoardVO", boardVO);
		return "board/boardModifyWrite";
	}
	
//	글 수정
	@RequestMapping("boardModifySave.do")
	public String updateNBoardModify(BoardVO vo) throws Exception{
		boardService.updateNBoard(vo);
		
		return "redirect:/boardList.do";
	}
	
}
