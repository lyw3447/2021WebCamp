package com.mycompany.myapp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mycompany.myapp.csee.CseeService;
import com.mycompany.myapp.csee.CseeVO;

@Controller
@RequestMapping(value="/main")
public class CseeController {

	@Autowired
	CseeService cseeService;
	
	@RequestMapping(value = "/csee", method = RequestMethod.GET)
	public String cseelist(Model model) {
		model.addAttribute("list", cseeService.getCseeList());
		return "cseelist";
	}
	
	@RequestMapping(value = "/detail/{id}", method = RequestMethod.GET)
	public String detail(@PathVariable("id") int id, Model model) {
		CseeVO cseeVO = cseeService.getCsee(id);
		model.addAttribute("u", cseeVO);
		return "detail"; 
	}
	
	@RequestMapping(value = "/addok", method = RequestMethod.POST)
	public String addPostOK(CseeVO vo) {
		if (cseeService.insertCsee(vo) == 0)
			System.out.println("데이터 추가실패 ");
		else
			System.out.println("데이터 추가 성공!!!");
		return "redirect:csee";
	}
	
	@RequestMapping(value = "/editform/{id}", method = RequestMethod.GET)
	public String editPost(@PathVariable("id") int id, Model model) {
		CseeVO cseeVO = cseeService.getCsee(id);
		model.addAttribute("u", cseeVO);
		return "editform"; 
	}
	
	@RequestMapping(value = "/editok", method = RequestMethod.POST)
	public String editPostOK(CseeVO vo) {
		if (cseeService.updateCsee(vo) == 0)
			System.out.println("데이터 수정 실패 ");
		else
			System.out.println("데이터 수정 성공!!!");
		return "redirect:csee";
	}
	
	@RequestMapping(value = "/deleteok/{id}", method = RequestMethod.GET)
	public String deletePostOK(@PathVariable("id") int id) {
		if (cseeService.deleteCsee(id) == 0)
			System.out.println("데이터 삭제 실패 ");
		else
			System.out.println("데이터 삭제 성공!!!");
		return "redirect:../csee";
	}
}
