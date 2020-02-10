package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import exception.QnaBoardException;
import logic.Qnaboard;
import logic.ShopService;

@Controller
@RequestMapping("admin_contact")
public class Admin_ContactController {
	@Autowired
	private ShopService service;
	@GetMapping("*") 
	public ModelAndView form(Integer qnano) {
		ModelAndView mav = new ModelAndView();
		Qnaboard qnaboard = null;
		if(qnano == null) {
			qnaboard = new Qnaboard();
		}
		mav.addObject("qnaboard",qnaboard);
//        }else {
//           chg =service.Chg(chg_no,request);
//        }
        return mav;
	}
	@RequestMapping("contact_list")
	public ModelAndView list(Integer pageNum, String content,HttpSession session) {
		ModelAndView mav = new ModelAndView();
		int limit = 10; //�������� �������� �Խù� �Ǽ�
		System.out.println(content);
		int listcount = service.qnacount(content); //��ü ��ϵ� �Խù� �Ǽ�
		pageNum=1;
		List<Qnaboard> qnaboardlist = service.qnalist(pageNum,limit,content);

		// �ִ� ������
		int maxpage = (int)((double)listcount/limit + 0.95);
		// �������� ù��° ������
		int startpage = (int)((pageNum/10.0 + 0.9) - 1) * 10 + 1;
		// �������� ������ ������
		int endpage = startpage + 9;
		if(endpage > maxpage) endpage = maxpage;
		
		//ȭ�鿡 ��µǴ� �Խù� ��ȣ. ����
		int boardno = listcount - (pageNum - 1) * limit;
		mav.addObject("pageNum", pageNum);
		mav.addObject("maxpage", maxpage);
		mav.addObject("startpage", startpage);
		mav.addObject("endpage", endpage);
		mav.addObject("listcount", listcount);
		mav.addObject("boardlist", qnaboardlist);
		mav.addObject("boardno", boardno);
		return mav;
		
	}
	@PostMapping("contact_write")
	public ModelAndView write(@Valid Qnaboard qnaboard,BindingResult bresult, HttpServletRequest request ) {
		ModelAndView mav = new ModelAndView();
		System.out.println(qnaboard);
		if(bresult.hasErrors()) {
			mav.getModel().putAll(bresult.getModel());
			return mav;
		}
		try {
			service.qnaboardWrite(qnaboard,request);
			mav.setViewName("redirect:contact_list.shop");
		} catch (Exception e) {
			e.printStackTrace();
			throw new QnaBoardException ("�Խù� ��Ͽ� �����߽��ϴ�.","contact_write.shop");
		}
		return mav;
	}
}
