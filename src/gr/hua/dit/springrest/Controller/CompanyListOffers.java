package gr.hua.dit.springrest.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CompanyListOffers {
	@GetMapping("/ListOffers")
	public String showLogin() {
		return "list-job_offers";
	}
}
