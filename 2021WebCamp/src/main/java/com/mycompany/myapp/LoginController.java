package com.mycompany.myapp;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mycompany.myapp.member.MemberServiceImpl;
import com.mycompany.myapp.member.MemberVO;

@Controller
@RequestMapping(value = "/login")
public class LoginController {

	@Autowired
	MemberServiceImpl service;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(String t, Model model) {
		return "login";
	}

	@RequestMapping(value = "/loginOk", method = RequestMethod.POST)
	public String loginCheck(HttpSession session, MemberVO vo) {
		String returnURL = "";
		if (session.getAttribute("login") != null) {
			session.removeAttribute("login");
		}
		MemberVO loginvo = service.getMember(vo);
		if (loginvo != null) {
			System.out.println("로그인 성공");
			session.setAttribute("login", loginvo);
			returnURL = "redirect:/main/csee";
		} else {
			System.out.println("로그인 실패!");
			returnURL = "redirect:/login/login";
		}
		return returnURL;
	}

	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login/login";
	}

}
