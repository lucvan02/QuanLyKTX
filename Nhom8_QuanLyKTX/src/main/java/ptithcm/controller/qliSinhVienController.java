package ptithcm.controller;

import javax.transaction.Transactional;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Transactional
@Controller
@RequestMapping(value = "admin/student/")
public class qliSinhVienController {
	
	@RequestMapping()
	public String index(){
		return "admin/qlSinhVien";
	}
}
