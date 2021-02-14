//package com.bookstore.controller;
//
//import java.io.IOException;
//import java.io.PrintWriter;
//import java.util.ArrayList;
//import java.util.List;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.data.domain.Page;
//import org.springframework.data.domain.PageRequest;
//import org.springframework.data.domain.Pageable;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import com.bookstore.entity.Sach;
//import com.bookstore.service.BookService;
//import com.google.gson.Gson;
//
//@Controller
//public class SearchController {
//	@Autowired
//	BookService bookService;
////	Pageable pageable = new PageRequest(0, 2);
//	String search = "";
//
//	@RequestMapping(value = "ajax")
//	public void search(HttpServletRequest request, HttpServletResponse response) throws IOException {
//		Gson gson = new Gson();
//		List<String> result = new ArrayList<String>();
//		PrintWriter out = response.getWriter();
//		String targetId = request.getParameter("tenSach");
//		List<Sach> list = bookService.findBookByTitle(targetId);
//		if (targetId != "") {
//			for (int i = 0; i < list.size(); i++) {
//
//				result.add(list.get(i).getTenSach());
//
//			}
//			out.print(gson.toJson(result));
//		} else {
//			result.clear();
//			out.print(gson.toJson(result));
//		}
//		// out.flush();
//		out.close();
//	}
//
//	@RequestMapping(value = "/search")
//	public String doSearch(@RequestParam("tenSach") String search, Model model) {
//		try {
//			search = search.replace('#', ' ').trim();
//		} catch (Exception e) {
//			// TODO: handle exception
//		}
//		Page<Sach> listPost = (Page<Sach>) bookService.findBookByTitle(search);
//		this.search = search;
//		model.addAttribute("listPost", listPost.getContent());
//		model.addAttribute("screenName", "searchPost");
//		return "home/shop";
//	}
//
////	@RequestMapping(value = "/trang-chu/searchPost/nextPage", method = RequestMethod.GET)
////	public String nextPage(Model model) {
////		pageable = pageable.next();
////		Page<Post_X> listPost = post_xService.findByTitleContaining(search, search, pageable);
////		model.addAttribute("listPost", listPost.getContent());
////		model.addAttribute("screenName", "searchPost");
////		return "web/new_feed";
////	}
////
////	@RequestMapping(value = "/trang-chu/searchPost/previousPage", method = RequestMethod.GET)
////	public String previousPage(Model model) {
////		pageable = pageable.previousOrFirst();
////		Page<Post_X> listPost = post_xService.findByTitleContaining(search, search, pageable);
////		model.addAttribute("listPost", listPost.getContent());
////		model.addAttribute("screenName", "searchPost");
////		return "web/new_feed";
////	}
//}
