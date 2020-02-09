package gr.hua.dit.springrest.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CompanyFormController {
	@GetMapping("/CompanyForm")
	public String showLogin() {
		return "company-form";
	}
}
