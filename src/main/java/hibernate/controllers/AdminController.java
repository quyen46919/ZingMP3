package hibernate.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@RequestMapping("/")
	public String getAdminPage(Model model) {
		return "/pages/admin_page/index";
	}
}
