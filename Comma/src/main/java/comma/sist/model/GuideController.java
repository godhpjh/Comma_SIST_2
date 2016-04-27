package comma.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import comma.sist.controller.Controller;
import comma.sist.controller.RequestMapping;
import comma.sist.guide.dao.*;
import comma.sist.common.*;
import java.util.*;
import java.io.*;

@Controller("gc")
public class GuideController {

	
	@RequestMapping("guide.do")
	public String guide(HttpServletRequest request){
		
		List<TextVO> list = GuideDAO.guideAllData();
		
		
		int totalpage = GuideDAO.guideTotalPage();
		System.out.println("가이드 총 페이지: "+totalpage);
		
		String page = request.getParameter("curpage");
		if(page==null) page = "1";
		int curpage = Integer.parseInt(page);
		
		int rowSize = 9;
		int start = (rowSize*curpage) - (rowSize-1);
		int end = rowSize*curpage;
		
		

		request.setAttribute("curpage", page);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("list", list);
		request.setAttribute("jsp", "guide/guide.jsp");		
		return "main.jsp";
	}
	
	@RequestMapping("guideWrite.do")
	public String guideWrite(HttpServletRequest request){
		request.setAttribute("jsp", "guide/guideWrite.jsp");		
		return "main.jsp";
	}
		
	@RequestMapping("guideWrite_ok.do")
	public String guide_Insert(HttpServletRequest request) throws Exception{
		
		request.setCharacterEncoding("EUC-KR");
		
		// \\211.238.142.74\images
		String path = "\\\\211.238.142.74\\images";
		String enctype = "EUC-KR";
		int	size = 1024*1024*100; 

		MultipartRequest mr 
				= new MultipartRequest(request,path,size,enctype,
						new DefaultFileRenamePolicy());
		
		
		String guide_subject = mr.getParameter("guide_subject");
		String guide_loc_intro = mr.getParameter("guide_loc_intro");
		String guide_img = mr.getOriginalFileName("guide_img");
		String guide_detail = mr.getParameter("guide_detail");
		String text_loc = mr.getParameter("text_loc");
		String text_total_person = mr.getParameter("text_total_person");
		String text_cost = mr.getParameter("text_cost");
		String guide_cost_detail = mr.getParameter("guide_cost_detail");
		String text_move = mr.getParameter("text_move");
		String text_time1 = mr.getParameter("text_time1"); // 시작 시간
		String text_time2 = mr.getParameter("text_time2"); // am/pm
		String text_time3 = mr.getParameter("text_time3"); // 끝 시간
		String text_time4 = mr.getParameter("text_time4"); // am/pm
		String guide_meet = mr.getParameter("guide_meet");	
		String text_tour_date = mr.getParameter("text_tour_date");

		
		int t_start = Integer.parseInt(text_time1);
		int t_end = Integer.parseInt(text_time3);
		int text_time = 0;
		
		if((text_time2.equals("am") && text_time4.equals("am")) || (text_time2.equals("pm") && text_time4.equals("pm"))){
			text_time = (int)(Math.abs(t_end-t_start));
		}else if((text_time2.equals("am") && text_time4.equals("pm"))){
			t_end += 12;
			text_time = t_end - t_start;
		}else if((text_time2.equals("pm") && text_time4.equals("am"))){
			
		}
		
		
		

		TextVO vo = new TextVO();
		vo.getGuidevo().setGuide_subject(guide_subject);
		vo.getGuidevo().setGuide_loc_intro(guide_loc_intro);
		vo.getGuidevo().setGuide_detail(guide_detail);
		vo.getGuidevo().setGuide_cost_detail(guide_cost_detail);
		vo.getGuidevo().setGuide_meet(guide_meet);
		vo.setText_loc(text_loc);
		vo.setText_total_person(Integer.parseInt(text_total_person));
		vo.setText_cost(text_cost);
		vo.setText_move(text_move);
		vo.setText_time1(text_time1);
		vo.setText_time2(text_time3);
		vo.setText_tour_date(text_tour_date);
		
		
		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("id");
		vo.getGuidevo().setUser_id(user_id);
		System.out.println(user_id);
		vo.getGuidevo().setGuide_map("임시용"); // 바꿔야됨
		
		if(guide_img==null){
			vo.getGuidevo().setGuide_img("");
		}else{
			File f = new File(path+"\\"+guide_img);
			String s = f.getAbsolutePath();
			System.out.println(s);
			request.setAttribute("imgPath", s);
			vo.getGuidevo().setGuide_img(guide_img);
		}
		
		GuideDAO.textInsert(vo);
		GuideDAO.guideInsert(vo);
		
		return "guide/guideWriteOk.jsp";
	}
	
	
	@RequestMapping("guideBoard.do")
	public String guideBoard(HttpServletRequest request){
		
		String no = request.getParameter("no");
		
		TextVO vo = GuideDAO.guideInfoData(Integer.parseInt(no));
		
		request.setAttribute("vo", vo);
		request.setAttribute("jsp", "guide/guideBoard.jsp");		

		return "main.jsp";
	}
	
}
