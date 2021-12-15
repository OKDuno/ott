package ott.zerock.domain;



import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class PageDTO {

	private int startPage; //������ ���� ���۰�
	private int endPage; //���������� ����
	
	private boolean prev, next; //�������� ����
	private int total; //��ü �۰���
	
	private Criteria cri;
	
	public PageDTO(Criteria cri, int total) {
		this.cri=cri;
		this.total=total;
		
		//1�������� ���� ������������ 10 2>10/3>10
		endPage = (int)Math.ceil((cri.getPageNum() /10.0))*10;
		startPage = endPage-9;
		
		//��¥ ������ ��
		int realEnd = (int)Math.ceil((total*1.0) / cri.getAmount());
		
		prev = startPage > 1; // 1���� ũ�� ù�������� �ٷΰ��� ��ư�� ����
		next = endPage < realEnd; //������ �������� ��¥ ������ �� ���� ������ �������������� �ٷΰ��� ��ư�� ����
		
		if(endPage > realEnd)
			endPage = realEnd;
		
	}
}
