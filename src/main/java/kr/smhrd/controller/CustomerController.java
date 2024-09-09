package kr.smhrd.controller;

import kr.smhrd.entity.Customer;
import kr.smhrd.service.CustomerService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class CustomerController {
   private  final CustomerService customerService;

   @PostMapping("/login")
   public String login(Customer customer){
       Customer cus=customerService.login(customer);
       if(cus!=null){
           // 인증성공 - <권한처리(X)>
           // HttpSession

       }
   }
}
