package gr.hua.dit.springrest.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class UpdateJobOffers {
	@GetMapping("/update")
	public String showLogin() {
		return "update-job_offers-form";
	}
}
