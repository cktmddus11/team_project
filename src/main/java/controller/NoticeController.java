package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("help")
public class NoticeController {
	@RequestMapping("*") // get���� ���� ��û�� �������� ������ �̰ɷ� ����?
	public String form(Model model) {
		return null; // null : url��  ���� �̵�?
	}
}
