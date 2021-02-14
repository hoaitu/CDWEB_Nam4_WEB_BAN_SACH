package com.bookstore.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bookstore.entity.Sach;
import com.bookstore.entity.Theloaisach;
import com.bookstore.entity.User;
import com.bookstore.service.BookService;
import com.bookstore.service.CategoryService;
import com.bookstore.service.PageService;
import com.bookstore.service.ReceiptItemService;
import com.bookstore.service.ReceiptService;
import com.bookstore.service.UserService;

@Controller
public class AdminController {
	@Autowired
	private CategoryService category;
	@Autowired
	private BookService bookService;
	@Autowired
	private UserService userService;
	@Autowired
	private PageService pageService;
	@Autowired
	private ReceiptItemService receiptItemService;
	@Autowired
	private ReceiptService receiptService;

//// TRANG CHU MAN HINH ADMIN
	@RequestMapping("/admin")
	public ModelAndView home(ModelMap model) {
		ModelAndView mav = new ModelAndView("admin/Index");
		return mav;
	}

/// DANH SACH SAN PHAM
	@RequestMapping("/admin/listProduct")
	public String listProduct(Model model) {
		return viewPhanTrang2(model, 1);
	}

//// PHAN TRANG
	@RequestMapping("/admin/listProducts/{pageNumber}")
	public String viewPhanTrang2(Model model, @PathVariable("pageNumber") int currentPage) {
		Page<Sach> page = pageService.listAll(currentPage);
		long totalItems = page.getTotalElements();
		int totalPage = page.getTotalPages();
		List<Sach> listSach = page.getContent();
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("listAllBooks", listSach);
		return "admin/danh_sach_sp";
	}

//// XOA SAN PHAM THEO MA SACH
	@RequestMapping("/admin/deleteProduct/{maSach}")
	public String deleteProduct(ModelMap model, @PathVariable("maSach") long maSach) {
		bookService.delete(maSach);
//		model.addAttribute("listAllBooks", bookService.findAll());
		return "redirect:/admin/listProduct";
	}

/// THEM MOT SAN PHAM MOI
	@RequestMapping(value = "/admin/addProduct", method = RequestMethod.GET)
	public String addProduct(ModelMap model) {
		model.addAttribute("books", new Sach());
//		model.addAttribute("listAllBooks", bookService.findAll());
		return "admin/them_sp";
	}

	/// THEM MOT SAN PHAM MOI
	@RequestMapping(value = "/admin/addProduct", method = RequestMethod.POST)
	public String addProduct(ModelMap model, @Valid @ModelAttribute("books") Sach sach, BindingResult result) {
//		String nameImage = uploadFile(file);
//		if (nameImage != null) {
		if (result.hasErrors()) {

			return "admin/them_sp";
		}

//			sach.setHinhAnh(nameImage);
		bookService.createBook(sach);
//		}

//		model.addAttribute("listAllBooks", bookService.findAll());
		return "redirect:listProduct";
	}

	public String uploadFile(MultipartFile file) {
		if (!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();
				String rootPath = System.getProperty("catalina.home");
				File dir = new File(rootPath + File.separator + "images");
				if (!dir.exists())
					dir.mkdir();
				String name = String.valueOf(new Date().getTime() + ".jpg");
				File serverFile = new File(dir.getAbsolutePath() + File.separator + name);
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();
				return name;
			} catch (Exception e) {

			}
		} else {

		}
		return null;
	}

//	private static final String UPLOAD_DIRECTORY = "/assets/img/shop/";

//	public String uploadFile(CommonsMultipartFile file, HttpSession session) throws IOException {
//
//		ServletContext context = session.getServletContext();
//		String path = context.getRealPath(UPLOAD_DIRECTORY);
//		String filename = file.getOriginalFilename();
//
//		System.out.println(path + " " + filename);
//
//		byte[] bytes = file.getBytes();
//		BufferedOutputStream stream = new BufferedOutputStream(
//				new FileOutputStream(new File(path + File.separator + filename)));
//		stream.write(bytes);
//		stream.flush();
//		stream.close();
//		return "";
//	}

/// DANH SACH LOAI SAN PHAM
	@RequestMapping("/admin/listProductType")
	public ModelAndView listProductType(ModelMap model) {
		ModelAndView mav = new ModelAndView("admin/ql_loai_sp");
		model.addAttribute("listcategory", category.findAll());
		return mav;
	}

////SAN PHAM THEO LOAI
	@RequestMapping(value = "/admin/listProductType/{id}", method = RequestMethod.GET)
	public ModelAndView shop(Model model, @PathVariable(value = "id") int id) {
		ModelAndView mav = new ModelAndView("admin/danh_sach_sp");
		model.addAttribute("listAllBooks", bookService.findByCategory(id));
		return mav;
	}

/// XOA LOAI SAN PHAM THEO MA THE LOAI
	@RequestMapping("/admin/deleteType/{maTheLoai}")
	public String deleteType(ModelMap model, @PathVariable("maTheLoai") long maTheLoai) {
		category.delete(maTheLoai);
		model.addAttribute("listcategory", category.findAll());
		return "redirect:/admin/listProductType";
	}

/// THEM LOAI SAN PHAM MOI
	@RequestMapping(value = "/admin/addType", method = RequestMethod.GET)
	public ModelAndView addType(ModelMap model) {
		ModelAndView mav = new ModelAndView("admin/them_loai_sp");
		model.addAttribute("category", new Theloaisach());
		model.addAttribute("listcategory", category.findAll());
		return mav;
	}

//// THEM LOAI SAN PHAM MOI
	@RequestMapping(value = "/admin/addType", method = RequestMethod.POST)
	public String addType(ModelMap model, @ModelAttribute("category") Theloaisach theloaisach, BindingResult result) {
		if (result.hasErrors()) {
			return "admin/them_loai_sp";
		}
		category.create(theloaisach);
		model.addAttribute("listcategory", category.findAll());
		return "redirect:listProductType";
	}

	// CHINH SUA LOAI SAN PHAM
	@RequestMapping(value = "/admin/editType/{maTheLoai}", method = RequestMethod.GET)
	public ModelAndView editType(ModelMap model, @PathVariable(value = "maTheLoai") long id) {
		ModelAndView mav = new ModelAndView("admin/chinh_sua_loaiSP");
		model.addAttribute("category", category.findById(id));
		return mav;
	}

	@RequestMapping(value = "/admin/editType/{maTheLoai}", method = RequestMethod.POST)
	public String editType(ModelMap model, @ModelAttribute("category") Theloaisach theloaisach) {
		category.update(theloaisach);
		model.addAttribute("listcategory", category.findAll());
		return "redirect:/admin/listProductType";
	}

/// DANH SACH CAC USER
	@RequestMapping("/admin/listCustomer")
	public ModelAndView listCustomer(ModelMap model) {
		ModelAndView mav = new ModelAndView("admin/khach_hang");
		model.addAttribute("listAllUser", userService.findAll());
		return mav;
	}

/// XOA TAI KHOAN THEO IDUSER
	@RequestMapping("/admin/deleteUser/{idUser}")
	public String deleteUser(ModelMap model, @PathVariable("idUser") long idUser) {
		userService.delete(idUser);
		model.addAttribute("listAllUser", userService.findAll());
		return "redirect:/admin/listCustomer";
	}

// THEM MOI MOT TAI KHOAN
	@RequestMapping(value = "/admin/addUser", method = RequestMethod.GET)
	public ModelAndView addUser(ModelMap model) {
		ModelAndView mav = new ModelAndView("admin/them_khach_hang");
		model.addAttribute("user", new User());
		model.addAttribute("listAllUser", userService.findAll());
		return mav;
	}

// THEM MOI MOT TAI KHOAN
	@RequestMapping(value = "/admin/addUser", method = RequestMethod.POST)
	public String addUser(ModelMap model, @Valid @ModelAttribute("user") User user, BindingResult result) {
		if (result.hasErrors()) {
			return "admin/them_khach_hang";
		}
		userService.create(user);
		model.addAttribute("listAllUser", userService.findAll());
		return "redirect:listCustomer";
	}

	// CHINH SUA TAI KHOAN
	@RequestMapping(value = "/admin/editCustomter/{idUser}", method = RequestMethod.GET)
	public ModelAndView editCustomter(ModelMap model, @PathVariable(value = "idUser") long id) {
		ModelAndView mav = new ModelAndView("admin/chinh_sua_kh");
		model.addAttribute("user", userService.findById(id));
		return mav;
	}

	@RequestMapping(value = "/admin/editCustomter/{idUser}", method = RequestMethod.POST)
	public String editCustomter(ModelMap model, @ModelAttribute("user") User user) {
		userService.update(user);
		model.addAttribute("listAllUser", userService.findAll());
		return "redirect:/admin/listCustomer";
	}

// DANH SACH DON HANG
	@RequestMapping("/admin/listOrder")
	public ModelAndView listOrder(ModelMap model) {
		ModelAndView mav = new ModelAndView("admin/QuanLyDonHang");
		model.addAttribute("listOrders", receiptItemService.showAll());
		return mav;
	}

	/// CHI TIET DON HANG

	@RequestMapping("/admin/orderDetail/{id}")
	public ModelAndView orderDetail(Model model, @PathVariable("id") long id) {
		ModelAndView mav = new ModelAndView("admin/chi_tiet_don_hang");
		model.addAttribute("listdetail", receiptItemService.findID(id));
		model.addAttribute("order", receiptService.findid(id));
		return mav;
	}

	/// XOA DON HANG
	@RequestMapping("/admin/deleteOrder/{id}")
	public String deleteOrder(ModelMap model, @PathVariable("id") long id) {
		receiptService.delete(id);
		return "redirect:/admin/listOrder";
	}

//// CHINH SUA SAN PHAM THEM MA SACH
	@RequestMapping(value = "/admin/editProduct/{maSach}", method = RequestMethod.GET)
	public ModelAndView editProduct(ModelMap model, @PathVariable(value = "maSach") long maSach) {
		ModelAndView mav = new ModelAndView("admin/chinh_sua_sp");
		model.addAttribute("book", bookService.findById(maSach));
		return mav;
	}

	@RequestMapping(value = "/admin/editProduct/{maSach}", method = RequestMethod.POST)
	public String editProduct(ModelMap model, @ModelAttribute("book") Sach sach) {
		bookService.update(sach);
//		model.addAttribute("listAllBooks", bookService.findAll());
		return "redirect:/admin/listProduct";
	}

/// CHINH SUA DON HANG
	@RequestMapping(value = "/admin/editOrder", method = RequestMethod.GET)
	public ModelAndView editOrder(ModelMap model) {
		ModelAndView mav = new ModelAndView("admin/chinh_sua_don_hang");
		return mav;
	}

}
