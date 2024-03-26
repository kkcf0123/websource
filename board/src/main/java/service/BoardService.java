package service;

import java.util.List;

import dto.BoardDto;

public interface BoardService {

    List<BoardDto> getList();

    boolean insert(BoardDto insertDto);

    BoardDto read(int bno);
}
