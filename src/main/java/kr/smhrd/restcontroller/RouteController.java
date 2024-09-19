package kr.smhrd.restcontroller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

// React.js, Next.js : = Route(r)
// http://localhost:8081/s02/list --> list.jsp
@Controller
public class RouteController {

     @GetMapping("/list")
     public String list(){
         // 책 목록을 데이터 베이스에서 가져온다(X)
         return "list"; // list.jsp
     }

     @GetMapping("/view/{id}")
     public String view(@PathVariable Long id, Model model){
         model.addAttribute("id", id);
         return "view"; // view.jsp
     }

     @GetMapping("/update/{id}")
     public String update(@PathVariable Long id, Model model){
         model.addAttribute("id", id);
         return "update"; // update.jsp
     }
}
