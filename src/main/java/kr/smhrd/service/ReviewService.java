package kr.smhrd.service;

import kr.smhrd.entity.Review;
import kr.smhrd.repository.ReviewRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ReviewService {

    private final ReviewRepository reviewRepository;

    public void register(Review review){
         reviewRepository.save(review);
    }

    public List<Review> getByReviews(Long book_id){
        return reviewRepository.findAll(book_id);
    }

    public Double getAvgRating(Long book_id){
        return reviewRepository.getAvgRating(book_id);
    }
}
