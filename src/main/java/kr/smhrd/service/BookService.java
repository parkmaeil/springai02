package kr.smhrd.service;

import kr.smhrd.entity.Book;
import kr.smhrd.repository.BookRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

// POJO : 비즈니스로직을 처리
@Service
@RequiredArgsConstructor
public class BookService {

    //@Autowired
    private final BookRepository bookRepository;
    // 기능정의...(crud)
    // 책 전체 목록을 가져오기
    //@Transactional
    public List<Book> bookList(){
        // 추가적은 로직을 구현....
        // List<?> list=bookRepository.findAll();
        return bookRepository.findAll();
    }
    // 책 등록 메서드
    public void register(Book book){
        bookRepository.save(book);
    }

    public Book view(Long id){
        // 추가 로직~~~
        return bookRepository.findById(id);
    }
}
