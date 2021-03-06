package org.iii.ee100.animour.login;

import javax.servlet.http.HttpSession;

import org.iii.ee100.animour.member.entity.Member;
import org.iii.ee100.animour.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

	@Autowired
	MemberService memberService;

	@RequestMapping("/sign_in")
	public String login() {

		return "/login/login";
	}

	@RequestMapping("/profile")
	public String profile(HttpSession session, 
						  @RequestParam("account") String account, 
						  @RequestParam("password") String password,
						  Model model) {
		Member member = memberService.getOneByAccount(account);
		if (member != null && member.getPassword().equals(password)){
			session.setAttribute("username", account);
			model.addAttribute("profile", member);
		return "/member/homepage";
		}
		else if(member !=null) {
			String s=member.getPassword();
			return "redirect:/";
		}
		else {
		return	"redirect:/login";
		}
	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) throws Exception {

		// session失效
		session.invalidate();
		// 重導向index
		return "index";

	}

}
