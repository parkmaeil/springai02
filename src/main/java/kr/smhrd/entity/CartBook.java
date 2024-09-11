package kr.smhrd.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class CartBook {
    private Long id;
    private Long book_id;// 책ID
    private Long customer_id; // 고객ID
    private int quantity; // 수량
    private Date created_at; // 구매일자

    //private Long id; // int a; Long a;
    private String title;
    private int price;
    private String author;
    private int page;

}
