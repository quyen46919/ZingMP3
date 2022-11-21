package hibernate.controllers;

import java.util.List;

import javax.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import hibernate.entities.Album;
import hibernate.services.AdminService;
import hibernate.utils.FileUploader;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	ServletContext aplication;
	
	@Autowired
	AdminService adminService;
	
	@RequestMapping("/")
	public String getAdminPage(
			Model model,
			@CookieValue(value = "email") String emailValue, 
			@CookieValue(value = "role") String roleValue
	) {
		// get cookie and add to model
		model.addAttribute("email", emailValue);
		model.addAttribute("role", roleValue);
		Album album = new Album();
		model.addAttribute("album", album);
		
		// add data list
		List<Album> albumList = adminService.getAlbumList();
		model.addAttribute("albumList", albumList);
		
		return "/pages/admin_page/index";
	}
	
	@PostMapping("/create-album")
	public String createAlbum(
			@ModelAttribute("album") Album album
	) {
		try {
			FileUploader uploader = new FileUploader(album.getImageFile());
			String filePath = uploader.transfer();
			album.setImageFile(null);
			album.setImageUrl(filePath);
			
			adminService.createAlbum(album);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/admin/";
	}
	
	@GetMapping("/delete-album")
	public String deleteAlbum(@RequestParam("id") String id, Model model) {
		boolean rs = adminService.deleteAlbum(id);
		if (rs == false) {
			model.addAttribute("albumErrorMsg", "Không thể xóa do đang có bài hát thuộc album này");
		}
		return "redirect:/admin/";
	}
}