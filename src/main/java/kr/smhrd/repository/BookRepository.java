package kr.smhrd.repository;

import kr.smhrd.entity.Book;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

//@Mapper
@Repository
public interface BookRepository {
   // 책 전체 목록 가져오기(MyBatis)
   public List<Book> findAll();  // SQL~
   public void save(Book book);
   public Book findById(Long id);
   public void deleteById(Long id);
   public void update(Long id, Book book);
}
