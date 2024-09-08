package kr.smhrd.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
//@Entity
public class Book {
    private Long id; // int a; Long a;
    private String title;
    private int price;
    private String author;
    private int page;

}
