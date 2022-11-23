package hibernate.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;

import hibernate.entities.Album;
import hibernate.entities.Singer;
import hibernate.entities.Song;
import hibernate.services.HomeService;

@Controller
@RequestMapping("/")
public class HomeController {
	
	@Autowired
	HomeService homeService;
	
	@RequestMapping("/")
	public String getHomepage(
			Model model, 
			@CookieValue(value = "email", required = false) String emailValue, 
			@CookieValue(value = "role", required = false) String roleValue
	) {
		// add data list
		List<Album> albumList = homeService.getAlbumList();
		model.addAttribute("albumList", albumList);
		List<Singer> singerList = homeService.getSingerList();
		model.addAttribute("singerList", singerList);
		List<Song> songList = homeService.getSongList();
		model.addAttribute("songList", songList);
		
		model.addAttribute("email", emailValue);
		model.addAttribute("role", roleValue);
		return "/index";
	}
}
