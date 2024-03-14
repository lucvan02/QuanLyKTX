package ptithcm.controller;

import javax.transaction.Transactional;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Transactional
@Controller
@RequestMapping(value = "admin/account")
public class qlTaiKhoanController {
	
	@RequestMapping("")
	public String qlTaiKhoan(){
		return "admin/qlTaiKhoan";
	}
	
	@RequestMapping("/myAccount")
	public String me(){
		return "admin/myAccount";
	}
	
	@RequestMapping("changePass")
	public String changPass() {
		return "/admin/changePass";
		
	}
	
}
