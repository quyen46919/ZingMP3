package hibernate.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/album")
public class AlbumController {
	@RequestMapping("/")
	public String getAlbumPage(Model model) {
		return "/pages/album_page/index";
	}
}
