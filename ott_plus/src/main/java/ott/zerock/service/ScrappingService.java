package ott.zerock.service;

import java.util.List;
import java.util.Map;

import ott.zerock.domain.MovieVO;
import ott.zerock.domain.ScrappingVO;



public interface ScrappingService {
	//넷플릭스 영화 데이터 조회
	public List<ScrappingVO> getNmList();
	
	//넷플릭스 tv 데이터 조회
	public List<ScrappingVO> getNtList();
	
	//디즈니플러스 영화 데이터 조회
	public List<ScrappingVO> getDmList();
	
	//디즈니플러스 tv 데이터 조회
	public List<ScrappingVO> getDtList();
	
	//hbo 영화 데이터 조회
	public List<ScrappingVO> getHmList();
	
	//hbo tv 데이터 조회
	public List<ScrappingVO> getHtList();
	
	//아마존 영화 데이터 조회
	public List<ScrappingVO> getAmList();
	
	//아마존 tv 데이터 조회
	public List<ScrappingVO> getAtList();
	
	//영화제목으로 장르, 배우 크롤링
	public List<Map<String, Object>> findInfo(String title) throws Exception;
	
	//내가 본 작품(제목, 장르, 배우, 평점) 등록
	public void input(MovieVO input);
	
	//내가 본 작품 삭제
	public void drop(String movie_title, String userId);
	
	//내가 본 작품(제목, 장르, 배우, 평점) 리스트
	public List<MovieVO> inputList();
	
	//작품 추천(영화)
	public List<String> recommend() throws Exception;
}
