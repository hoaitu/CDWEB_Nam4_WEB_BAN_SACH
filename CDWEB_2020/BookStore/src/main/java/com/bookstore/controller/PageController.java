package com.bookstore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bookstore.entity.Sach;
import com.bookstore.service.BookService;
import com.bookstore.service.CategoryService;
import com.bookstore.service.PageService;

@Controller
public class PageController {
	@Autowired
	private PageService pageService;
	@Autowired
	private CategoryService category;
	@Autowired
	private BookService bookService;

	@RequestMapping(value = "/shop/{id}", method = RequestMethod.GET)
	public ModelAndView shop(Model model, @PathVariable(value = "id") int id) {
		ModelAndView mav = new ModelAndView("home/shop");
		model.addAttribute("listcategory", category.findAll());
		model.addAttribute("listSach", bookService.findByCategory(id));
		return mav;
	}

	@RequestMapping("/shops")
	@ResponseBody
	public List<Sach> viewPhanTrang2(Model model, @RequestParam int currentPage) {
		Page<Sach> page = pageService.listAll(currentPage);
//		long totalItems = page.getTotalElements();
//		int totalPage = page.getTotalPages();
		List<Sach> listSach = page.getContent();
//		model.addAttribute("totalItems", totalItems);
//		model.addAttribute("currentPage", currentPage);
//		model.addAttribute("totalPage", totalPage);
//		model.addAttribute("listAllBooks", listSach);
		model.addAttribute("listcategory", category.findAll());
		return listSach;
	}

	@RequestMapping("/shop")
	public String viewPhanTrang(ModelMap model) {
		int currentPage = 1;
		Page<Sach> page = pageService.listAll(currentPage);
		List<Sach> listSach = page.getContent();
		int totalPage = page.getTotalPages();
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("listSach", listSach);
		model.addAttribute("listcategory", category.findAll());
		return "home/shop";
	}
}
