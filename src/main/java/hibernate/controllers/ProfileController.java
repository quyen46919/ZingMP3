package hibernate.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import hibernate.services.UserService;

@Controller
@RequestMapping("/profile")
public class ProfileController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping("/")
	public String getProfilePage(Model model,
			@CookieValue(value = "email", required = false) String emailValue, 
			@CookieValue(value = "role", required = false) String roleValue
		) {
		// get cookie and add to model
		model.addAttribute("email", emailValue);
		model.addAttribute("role", roleValue);
		
		return "/pages/profile_page/index";
	}

	@GetMapping("/favorite-song")
	public String addFavoriteSong(
			Model model,
			@RequestParam String userEmail,
			@RequestParam String songId
	) {
		System.out.println("userEmail" + userEmail);
		System.out.println("songId" + songId);
		
		boolean rs = userService.addFavoriteSong(userEmail, songId);
		System.out.println("rs" + rs);
		return "redirect:/profile/"; 
	}
}
