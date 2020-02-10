package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.Help;
import logic.ShopService;

@Controller
@RequestMapping("help")
public class NoticeController {
	
	@Autowired
	private ShopService service;
	
	@RequestMapping("*") // get���� ���� ��û�� �������� ������ �̰ɷ� ����?
	public String form(Model model) {
		return null; // null : url��  ���� �̵�?
	}
	@RequestMapping("notice")
	public ModelAndView selectboard(String selectvalue, Integer pageNum) {
		ModelAndView mav = new ModelAndView();
		if (pageNum == null || pageNum.toString().equals("")) {
			pageNum = 1;
		}
		int limit = 10; // �������� �Խù� �Ǽ�
		int filter = 0;
		int noticelistcount = service.boardcount(1, 0);
		List<Help> noticelist = service.selectboard(1, 0, pageNum, limit);
		int noticemaxpage = (int)((double)noticelistcount / limit + 0.95);
		int noticestartpage = (int) ((pageNum / 10.0 + 0.9) - 1) * 10 + 1;
		int noticeendpage = noticestartpage + 9;
		if(noticeendpage > noticemaxpage) {
			noticeendpage = noticemaxpage;
		}
		
		if(selectvalue != null) {
			if(selectvalue.equals("���")) {
				filter = 1;
			}else if(selectvalue.equals("��ȯ/��ǰ/ȯ��")) {
				filter = 2;
			}else if(selectvalue.equals("��Ÿ")) {
				filter = 3;
			}else if(selectvalue.equals("��ǰ")) {
				filter = 4;
			}else if(selectvalue.equals("�ֹ�����")) {
				filter = 5;
			}
		}
		int qnalistcount = service.boardcount(2, filter);
		List<Help> qnalist = service.selectboard(2, filter, pageNum, limit);
		int	qnamaxpage = (int)((double)qnalistcount / limit + 0.95);
		int qnastartpage = (int) ((pageNum / 10.0 + 0.9) - 1) * 10 + 1;
		int	qnaendpage = qnastartpage + 9;
		if(qnaendpage > qnamaxpage) {
			qnaendpage = qnamaxpage;
		}
		
		mav.addObject("pageNum", pageNum);
		mav.addObject("noticemaxpage", noticemaxpage);
		mav.addObject("noticestartpage", noticestartpage);
		mav.addObject("noticeendpage", noticeendpage);
		
		mav.addObject("qnamaxpage", qnamaxpage);
		mav.addObject("qnastartpage", qnastartpage);
		mav.addObject("qnaendpage",qnaendpage);
		mav.addObject("noticelist", noticelist);
		//System.out.println(noticelist);
		mav.addObject("qnalist", qnalist);
		//System.out.println(qnalist);
		return mav;
	}
}
