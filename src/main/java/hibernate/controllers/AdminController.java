package hibernate.controllers;

import java.util.List;

import javax.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import hibernate.entities.Album;
import hibernate.entities.Singer;
import hibernate.entities.Song;
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
			@CookieValue(value = "email", required = false) String emailValue, 
			@CookieValue(value = "role", required = false) String roleValue
	) {
		// get cookie and add to model
		model.addAttribute("email", emailValue);
		model.addAttribute("role", roleValue);
		
		// create models
		Album album = new Album();
		model.addAttribute("album", album);
		Singer singer = new Singer();
		model.addAttribute("singer", singer);
		Song song = new Song();
		model.addAttribute("song", song);
		
		// add data list
		List<Album> albumList = adminService.getAlbumList();
		model.addAttribute("albumList", albumList);
		List<Singer> singerList = adminService.getSingerList();
		model.addAttribute("singerList", singerList);
		List<Song> songList = adminService.getSongList();
		model.addAttribute("songList", songList);
		
		System.out.println("songList" + songList);
		
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
	
	@PostMapping("/create-singer")
	public String createSinger(
			@ModelAttribute("singer") Singer singer
	) {
		try {
			FileUploader uploader = new FileUploader(singer.getImageFile());
			String filePath = uploader.transfer();
			singer.setImageFile(null);
			singer.setImageUrl(filePath);
			
			adminService.createSinger(singer);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/admin/";
	}
	
	@PostMapping("/update-singer")
	@Transactional
	public String updateSinger(
//			@RequestParam("id") String id,
//			@RequestParam("name") String name,
//			@RequestParam("story") String story
			@ModelAttribute("singer") Singer singer
	) {

		System.out.println("SINGER IS " + singer);
		System.out.println("singer.getImageFile() = " + singer.getImageFile());
		if (!singer.getImageFile().isEmpty()) {
			FileUploader imageUploader = new FileUploader(singer.getImageFile());
			String filePath = imageUploader.transfer();
			singer.setImageFile(null);
			singer.setImageUrl(filePath);
		}
		adminService.updateSinger(singer);
		
		return "redirect:/admin/";
	}
	
	@GetMapping("/delete-singer")
	public String deleteSinger(@RequestParam("id") String id, Model model) {
		boolean rs = adminService.deleteSinger(id);
		if (rs == false) {
			model.addAttribute("singerErrorMsg", "Không thể xóa do có bài hát thuộc ca sĩ này");
		}
		return "redirect:/admin/";
	}
	
	@PostMapping("/create-song")
	public String createSong(
			@ModelAttribute("song") Song song
	) {
		try {
			FileUploader imageUploader = new FileUploader(song.getImageFile());
			String filePath = imageUploader.transfer();
			song.setImageFile(null);
			song.setImageUrl(filePath);
			
			FileUploader sourceUploader = new FileUploader(song.getSourceFile());
			String sourcePath = sourceUploader.transferAudio();
			song.setSourceFile(null);
			song.setSource(sourcePath);
			
			adminService.createSong(song);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/admin/";
	}
	
	@GetMapping("/delete-song")
	public String deleteSong(@RequestParam("id") String id, Model model) {
		boolean rs = adminService.deleteSong(id);
		if (rs == false) {
			model.addAttribute("singerErrorMsg", "Có lỗi xảy ra");
		}
		return "redirect:/admin/";
	}
}