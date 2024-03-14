package ptithcm.controller;

import javax.transaction.Transactional;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Transactional
@Controller
@RequestMapping(value = "admin/room")
public class qlPhongController {
	
	@RequestMapping()
	public String qlPhong(){
		return "admin/qlPhong";
	}
}
