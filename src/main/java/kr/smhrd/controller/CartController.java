package kr.smhrd.controller;

import kr.smhrd.entity.Cart;
import kr.smhrd.service.CartService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class CartController {

    private final CartService cartService;

    @PostMapping("/addToCart")
    public String addToCart(Cart cart){
        cartService.addToCart(cart);
        return "redirect:/bookList"; // 리스트보기
    }

    @GetMapping("/cartList/{customer_id}")
    public String cartList(@PathVariable Long customer_id){

        return "cartList"; // cartList.jsp
    }
}
