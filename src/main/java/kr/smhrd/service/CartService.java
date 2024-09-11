package kr.smhrd.service;

import kr.smhrd.entity.Cart;
import kr.smhrd.entity.CartBook;
import kr.smhrd.repository.CartRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class CartService {

   private final CartRepository cartRepository;

   public void addToCart(Cart cart){
       cartRepository.save(cart);
   }

   public List<CartBook> cartView(Long customer_id){
       return cartRepository.findByCustomerId(customer_id);
   }
}
