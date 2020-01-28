package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import logic.Item;

@Controller
@RequestMapping("item")
public class ItemController {
	@GetMapping("*") // get���� ���� ��û�� �������� ������ �̰ɷ� ����?
	public String form(Model model) {
		Item item = new Item();
		model.addAttribute("item",item);
		return null; // null : url��  ���� �̵�?
	}
	
	@RequestMapping("imgupload")
	public String imgupload(MultipartFile upload, String CKEditorFuncNum, HttpServletRequest request, 
			Model model) {
		model.addAttribute("CKEditorFuncNum", CKEditorFuncNum);
		return "ckedit";
	}
}