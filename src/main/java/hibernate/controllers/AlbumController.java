package hibernate.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import hibernate.entities.Album;
import hibernate.services.AlbumService;

@Controller
@RequestMapping("/album")
public class AlbumController {
	
	@Autowired
	AlbumService albumService;
	
	@GetMapping(value = "/{id}")
	public String getAlbumPage(
			Model model,
			@PathVariable(name="id", required = false) String id,
			@CookieValue(value = "email", required = false) String emailValue, 
			@CookieValue(value = "role", required = false) String roleValue,
			HttpServletRequest request
	) {
		// get cookie and add to model
		model.addAttribute("email", emailValue);
		model.addAttribute("role", roleValue);
		
		Album album = albumService.getAlbumSongList(id);

		System.out.println("album = " + album);
		model.addAttribute("album", album);
		return "/pages/album_page/index";
	}
}
