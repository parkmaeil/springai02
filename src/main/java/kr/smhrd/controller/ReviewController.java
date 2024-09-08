package kr.smhrd.controller;

import kr.smhrd.entity.Review;
import kr.smhrd.service.ReviewService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class ReviewController {

    private final ReviewService reviewService;

    @PostMapping("/reviewAdd")
    public String reviewAdd(Review review){
        // 리뷰등록
        reviewService.register(review);
        return "redirect:/bookView/"+review.getBook_id();
    }

}
