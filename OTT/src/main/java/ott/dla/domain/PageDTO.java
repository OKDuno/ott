package ott.dla.domain;



import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class PageDTO {

	private int startPage; //페이지 바의 시작값
	private int endPage; //페이지바의 끝값
	
	private boolean prev, next; //페이지바 점프
	private int total; //전체 글개수
	
	private Criteria cri;
	
	public PageDTO(Criteria cri, int total) {
		this.cri=cri;
		this.total=total;
		
		//1페이지가 들어가면 엔드페이지는 10 2>10/3>10
		endPage = (int)Math.ceil((cri.getPageNum() /10.0))*10;
		startPage = endPage-9;
		
		//진짜 페이지 수
		int realEnd = (int)Math.ceil((total*1.0) / cri.getAmount());
		
		prev = startPage > 1; // 1보다 크면 첫페이지로 바로가기 버튼을 생성
		next = endPage < realEnd; //마지막 페이지가 진짜 페이지 수 보다 작으면 마지막페이지로 바로가기 버튼을 생성
		
		if(endPage > realEnd)
			endPage = realEnd;
		
	}
}
