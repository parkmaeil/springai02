package kr.smhrd.repository;

import kr.smhrd.entity.Cart;
import kr.smhrd.entity.CartBook;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CartRepository {
    public void save(Cart cart);
    public List<CartBook> findByCustomerId(Long customer_id);

}
