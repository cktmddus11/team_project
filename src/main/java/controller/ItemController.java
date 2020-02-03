package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import logic.Item;
import logic.ShopService;

@Controller
@RequestMapping("item")
public class ItemController {
	@Autowired 
	private ShopService service;
	
	@GetMapping("*") 
	public String form(Model model) {
		Item item = new Item();
		model.addAttribute("item",item);
		return null;
	}
	
	@RequestMapping("imgupload")
	public String imgupload(MultipartFile upload, String CKEditorFuncNum, HttpServletRequest request, 
			Model model) {
		model.addAttribute("CKEditorFuncNum", CKEditorFuncNum);
		return "ckedit";
	}
	@GetMapping("list")
	public ModelAndView itemlist(Integer category, Integer subcategory, Integer character) {
		ModelAndView mav = new ModelAndView();
		Item item = new Item();
		List<Item> itemlist = service.itemlist(category, subcategory, character);
		int itemlistcount = service.itemlistcount(category, subcategory, character);
		
		System.out.println(itemlist);
		mav.addObject("item", item);
		mav.addObject("itemlist", itemlist);
		mav.addObject("itemlistcount", itemlistcount);
		return mav;
	}
	@PostMapping("list")
	public ModelAndView itemlistsearch(Item item) {
		ModelAndView mav = new ModelAndView();
		System.out.println(item);
		return mav;
	}
}
