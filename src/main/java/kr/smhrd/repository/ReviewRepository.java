package kr.smhrd.repository;

import kr.smhrd.entity.Review;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ReviewRepository {

    public void save(Review review); //SQL
    public List<Review> findAll(Long book_id);

    @Select("select avg(rating) from review where book_id=#{book_id}")
    public Double getAvgRating(Long book_id);
}
