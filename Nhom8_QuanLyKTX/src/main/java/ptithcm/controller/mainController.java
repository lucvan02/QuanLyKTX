package ptithcm.controller;

import javax.transaction.Transactional;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Transactional
@Controller
@RequestMapping(value = "index")
public class mainController {
	@RequestMapping()
	public String qlPhong(){
		return "login";
	}
}
