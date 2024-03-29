package dto;

public class PageDto {
    private int startPage;
    private int endPage;
    private boolean prev;
    private boolean next;

    private SearchDto searchDto;
    private int total;

    public PageDto(SearchDto searchDto, int total) {
        this.searchDto = searchDto;
        this.total = total;

        endPage = (int) (Math.ceil(searchDto.getPage() / 10.0)) * 10;
        startPage = endPage - 9;

        int readEnd = (int) (Math.ceil((total / 1.0) / searchDto.getAmount()));
        if (readEnd < this.endPage) {
            this.endPage = readEnd;

        }
        this.prev = this.startPage > 1;
        this.next = this.endPage < readEnd;
    }
}
