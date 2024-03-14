package ptithcm.controller;

import javax.transaction.Transactional;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Transactional
@Controller
@RequestMapping(value = "admin/thongKe")
public class thongKeController {
	
	@RequestMapping()
	public String thongKe(){
		return "admin/thongKe";
	}
}
