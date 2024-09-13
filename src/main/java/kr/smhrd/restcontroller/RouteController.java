package kr.smhrd.restcontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

// React.js, Next.js : = Route(r)
// http://localhost:8081/s02/list --> list.jsp
@Controller
public class RouteController {

     @GetMapping("/list")
     public String list(){
         // 책 목록을 데이터 베이스에서 가져온다(X)
         return "list"; // list.jsp
     }
}
