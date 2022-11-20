package hibernate.controllers;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Path;
import java.util.Base64;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import hibernate.entities.Album;
import hibernate.services.AdminService;

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
		model.addAttribute("email", emailValue);
		model.addAttribute("role", roleValue);
		Album album = new Album();
		model.addAttribute("album", album);
		return "/pages/admin_page/index";
	}
	
	@PostMapping("/create-album")
	public String createAlbum(
			@ModelAttribute("album") Album album
//			@RequestBody() String name, @RequestParam(name = "imageFile") MultipartFile imageFile
	) {
//		if (album.getImageFile().isEmpty()) {
			String path = aplication.getRealPath("/");
			System.out.println("path: " + path);
			System.out.println("album name: " + album.getName());
			System.out.println("album file: " + album.getImageFile());
			
			try {
				String filePath = "D:\\Quyen\\STUDY\\SpringMVC3\\ZingMp3\\src\\main\\webapp\\WEB-INF\\resources" + "\\public\\imgs\\" + album.getImageFile().getOriginalFilename();
				album.getImageFile().transferTo(Path.of(filePath));
				album.setImageFile(null);
				album.setImageUrl(filePath);
				System.out.println("filePath: " + filePath);
				adminService.createAlbum(album);
			} catch (Exception e) {
				e.printStackTrace();
			}
//		}
		return "redirect:/admin/";
	}
}