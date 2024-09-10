package kr.smhrd.repository;

import kr.smhrd.entity.Cart;
import kr.smhrd.entity.CartBook;
import org.springframework.stereotype.Repository;

@Repository
public interface CartRepository {
    public void save(Cart cart);
    public CartBook findByCustomerId(Long customer_id);

}
