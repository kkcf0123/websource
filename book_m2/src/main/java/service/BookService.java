package service;

import java.util.List;

import dto.BookDto;

public interface BookService {
    // call DAO
    // CRUD
    // 조회 검색 삽입 삭제 수정

    List<BookDto> listAll();

    BookDto read(int code);

    List<BookDto> searchListAll(String criteria, String keyword);

    boolean create(BookDto insertDto);

    boolean update(BookDto insertDto);

    boolean delete(int code);

}