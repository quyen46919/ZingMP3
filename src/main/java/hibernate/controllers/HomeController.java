package hibernate.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class HomeController {
	@RequestMapping("/")
	public String getHomepage(
			Model model, 
			@CookieValue(value = "email") String emailValue, 
			@CookieValue(value = "role") String roleValue
	) {
		model.addAttribute("email", emailValue);
		model.addAttribute("role", roleValue);
		return "/index";
	}
}
