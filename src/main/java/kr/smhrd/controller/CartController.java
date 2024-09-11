package kr.smhrd.controller;

import kr.smhrd.entity.Cart;
import kr.smhrd.entity.CartBook;
import kr.smhrd.service.CartService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

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
    public String cartList(@PathVariable Long customer_id, Model model){
        List<CartBook> cartList=cartService.cartView(customer_id);
        model.addAttribute("cartList", cartList);
        return "cartList"; // cartList.jsp
    }

    @GetMapping("/removeCart/{cart_id}/{customer_id}")
    public String removeCart(@PathVariable Long cart_id,
                             @PathVariable Long customer_id){
        cartService.cartRemove(cart_id);
        return "redirect:/cartList/"+customer_id;
    }
}
