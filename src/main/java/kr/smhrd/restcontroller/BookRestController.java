package kr.smhrd.restcontroller;

import kr.smhrd.entity.Book;
import kr.smhrd.service.BookService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api") // Open API(URL)
@RequiredArgsConstructor
public class BookRestController {

    private final BookService bookService;

    @GetMapping("/book")
    // <Rest API 명세서>
    // GET : http://localhost:8081/s02/api/book
    // JSON response(응답)
    /*
    [{"id":7,"title":"자바의 신","price":30000,"author":"이길동","page":500},{"id":8,"title":"파이썬","price":32000,"author":"조길동","page":560},{"id":9,"title":"오라클","price":27000,"author":"손길동","page":610}]
     */
    public List<Book> bookList(){
         List<Book> list=bookService.bookList();
         return list; // MessageConverter API 동작(jackson-databind)
    }

    @PostMapping("/book")
    // {"title":"딥러닝", "price":40000, "author":"나길동", "page":500}
    /*
       Rest API 명세서
       POST : http://localhost:8081/s02/api/book
       request(요청) : JSON
       {"title":"딥러닝", "price":40000, "author":"나길동", "page":500}
     */
    public String register(@RequestBody Book book){
        bookService.register(book);
        return "ok"; // 응답
    }

    @DeleteMapping("/book/{id}") // ?id=1
    /*
      request(요청)
      DELETE : http://localhost:8081/s02/api/book/{id}
      id : 삭제할 책 번호
      response(응답) : ok
    */
    public String remove(@PathVariable Long id){
        bookService.remove(id); // 삭제
        return "ok"; // 응답
    }

}
