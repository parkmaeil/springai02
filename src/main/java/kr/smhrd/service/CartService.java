package kr.smhrd.service;

import kr.smhrd.entity.Cart;
import kr.smhrd.repository.CartRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class CartService {

   private final CartRepository cartRepository;

   public void addToCart(Cart cart){
       cartRepository.save(cart);
   }
}
