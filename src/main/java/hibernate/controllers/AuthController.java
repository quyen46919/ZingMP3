package hibernate.controllers;

import javax.persistence.NoResultException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import hibernate.entities.User;
import hibernate.services.UserServiceImpl;

@Controller
@RequestMapping("/auth")
public class AuthController {
	
	@Autowired
	private UserServiceImpl userService;
	
	@RequestMapping("/login")
	public String getLoginPage(Model model) {
		User user = new User();
		model.addAttribute("user", user);
		model.addAttribute("errorMsg", null);
		return "/pages/auth_page/login";
	}
	
	@RequestMapping("/logup")
	public String getLogupPage(Model model) {
		User user = new User();
		model.addAttribute("user", user);
		return "/pages/auth_page/logup";
	}
	
	@PostMapping("/sign-up")
	@Transactional
	public String signup(@ModelAttribute("user") User user, Model model, HttpServletRequest request, HttpServletResponse response) {
		boolean checkValidUser = userService.checkDuplicateEmail(user.getEmail());
		
		if (checkValidUser) {
			User loggedUser = userService.logup(user);
			// create cookie
			createAuthCookie(loggedUser, model, request, response);
			
			return "redirect:/";
		} else {
			model.addAttribute("errorMsg", "Email đã tồn tại");
			return "/pages/auth_page/logup";
		}
	}
	
	@PostMapping("/sign-in")
	public String signin(@ModelAttribute("user") User user, Model model, HttpServletRequest request, HttpServletResponse response) {
		try {
			User loggedUser = userService.login(user);
			// create cookie
			createAuthCookie(loggedUser, model, request, response);
			
			return "redirect:/";
		} catch (NoResultException nre) {
			model.addAttribute("errorMsg", "Thông tin đăng nhập không chính xác");
			return "/pages/auth_page/login";
		}
	}
	
	@GetMapping("/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
	        for (Cookie cookie : cookies) {
            	Cookie ck = new Cookie(cookie.getName(), "");
            	ck.setMaxAge(0);
            	ck.setPath("");
	            response.addCookie(ck);
	        }
		}
		return "redirect:/auth/login";
	}
	
	private void createAuthCookie(User loggedUser, Model model, HttpServletRequest request, HttpServletResponse response) {
		Cookie authCookie =  new Cookie("email", loggedUser.getEmail());
		authCookie.setMaxAge(24*60*60);
		authCookie.setPath("/");
		authCookie.setDomain("localhost");
		response.addCookie(authCookie);
		
		Cookie roleCookie =  new Cookie("role", Integer.toString(loggedUser.getRole()));
		roleCookie.setMaxAge(24*60*60);
		roleCookie.setPath("/");
		roleCookie.setDomain("localhost");
		response.addCookie(roleCookie);
		
		model.addAttribute("email", loggedUser.getEmail());
		model.addAttribute("role", loggedUser.getRole());
	}
}
