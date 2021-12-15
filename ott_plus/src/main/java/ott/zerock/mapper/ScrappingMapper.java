package ott.zerock.mapper;

import java.util.List;

import ott.zerock.domain.InputVO;

import ott.zerock.domain.ScrappingVO;


public interface ScrappingMapper {
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
	
	//내가 본 작품 등록
	public void input(InputVO input);
	
	//내가 본 작품 리스트
	public List<InputVO> inputList();
}
