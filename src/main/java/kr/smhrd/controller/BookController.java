package kr.smhrd.controller;

import kr.smhrd.entity.Book;
import kr.smhrd.entity.Review;
import kr.smhrd.service.BookService;
import kr.smhrd.service.ReviewService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

// POJO(알바생)
@Controller
@RequiredArgsConstructor
//@RequestMapping("/api")
public class BookController{

    private final BookService bookService;
    private final ReviewService reviewService;
    // 책 전체목록 요청 처리
    @GetMapping("/bookList")
    public String bookList(Model model){
        List<Book> bookList=bookService.bookList();
        model.addAttribute("bookList", bookList);
        return "bookList"; // bookList.jsp-> ${bookList}
    }

    @GetMapping("/bookRegister")
    public String bookRegisterGet(){
       return "bookRegister";  // bookRegister.jsp
    }

    @PostMapping("/bookRegister")
                                 // new Book()
    public String bookRegisterPost(Book book){
        // 등록작업....
        bookService.register(book);
        return "redirect:/bookList"; // 다시 리스트페이지로
    }

    @GetMapping("/bookView/{id}") // /3
    public String bookView(@PathVariable Long id, Model model){
        Book book=bookService.view(id);
        model.addAttribute("book", book);
        // 리뷰정보 가져오기~~
        List<Review> reviews=reviewService.getByReviews(id);
        model.addAttribute("reviews", reviews);
        // 평점 가져오기
         Double avgRating=reviewService.getAvgRating(id);
         if(avgRating!=null){
             model.addAttribute("avgRating",avgRating);
         }else{
             model.addAttribute("avgRating","0.0");
         }
        return "bookView"; // bookView.jsp
    }
}
