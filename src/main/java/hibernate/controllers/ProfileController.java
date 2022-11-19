package hibernate.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/profile")
public class ProfileController {
	@RequestMapping("/")
	public String getProfilePage(Model model) {
		return "/pages/profile_page/index";
	}
}
