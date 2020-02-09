package gr.hua.dit.springrest.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
@Controller
public class StudentDelete {
	@GetMapping("/stddlt")
	public String showLogin() {
		return "StudentDelete";
	}
}
