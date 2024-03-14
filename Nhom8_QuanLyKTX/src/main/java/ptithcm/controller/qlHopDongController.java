package ptithcm.controller;

import javax.transaction.Transactional;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Transactional
@Controller
@RequestMapping(value = "admin/contract")
public class qlHopDongController {
	
	@RequestMapping()
	public String qlHopDong(){
		return "admin/qlHopDong";
	}
}
