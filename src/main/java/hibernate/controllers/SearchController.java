package hibernate.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import hibernate.entities.Album;
import hibernate.entities.Singer;
import hibernate.entities.Song;
import hibernate.services.HomeService;

@Controller
@RequestMapping("/search")
public class SearchController {
	
	@Autowired
	HomeService homeService;

	@RequestMapping("/")
	public String getSearchPage(
		Model model,
		@RequestParam String searchText,
		@CookieValue(value = "email", required = false) String emailValue, 
		@CookieValue(value = "role", required = false) String roleValue
	) {
		model.addAttribute("email", emailValue);
		model.addAttribute("role", roleValue);
		
		System.out.println("searchText" + searchText);
		
		List<Singer> singers = homeService.searchSinger(searchText);
		model.addAttribute("singers", singers);
		
		List<Song> songs = homeService.searchSong(searchText);
		model.addAttribute("songs", songs);
		
		List<Album> albums = homeService.searchAlbum(searchText);
		model.addAttribute("albums", albums);
		
		System.out.println("singers = " + singers);
		System.out.println("songs = " + songs);
		System.out.println("albums = " + albums);
		
		return "pages/research_page/index";
	}
}
