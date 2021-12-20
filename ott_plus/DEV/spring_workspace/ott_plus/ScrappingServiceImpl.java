package ott.zerock.service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import ott.zerock.domain.InputVO;
import ott.zerock.domain.MovieVO;
import ott.zerock.domain.ScrappingVO;
import ott.zerock.mapper.ScrappingMapper;

@Service
@AllArgsConstructor
public class ScrappingServiceImpl implements ScrappingService {
	
	private ScrappingMapper mapper;
	
	@Override
	public List<ScrappingVO> getNmList() {
		// TODO Auto-generated method stub
		return mapper.getNmList();
	}

	@Override
	public List<ScrappingVO> getNtList() {
		// TODO Auto-generated method stub
		return mapper.getNtList();
	}

	@Override
	public List<ScrappingVO> getDmList() {
		// TODO Auto-generated method stub
		return mapper.getDmList();
	}

	@Override
	public List<ScrappingVO> getDtList() {
		// TODO Auto-generated method stub
		return mapper.getDtList();
	}

	@Override
	public List<ScrappingVO> getHmList() {
		// TODO Auto-generated method stub
		return mapper.getHmList();
	}

	@Override
	public List<ScrappingVO> getHtList() {
		// TODO Auto-generated method stub
		return mapper.getHtList();
	}

	@Override
	public List<ScrappingVO> getAmList() {
		// TODO Auto-generated method stub
		return mapper.getAmList();
	}

	@Override
	public List<ScrappingVO> getAtList() {
		// TODO Auto-generated method stub
		return mapper.getAtList();
	}

	@Override
	public List<Map<String, Object>> findInfo(String title) throws Exception {
		List<Map<String,Object>> list = new ArrayList<Map<String, Object>>();
		
		HashMap<String,Object> map = new HashMap<String,Object>();
		int cnt=0;
		String s;
		Process oProcess;
		
		oProcess =new ProcessBuilder("python","/opt/tomcat/webapps/ott_plus/PythonMovie.py",title).start();
		
		BufferedReader stdOut   = new BufferedReader(new InputStreamReader(oProcess.getInputStream(),"MS949"));
    	BufferedReader stdError = new BufferedReader(new InputStreamReader(oProcess.getErrorStream(),"MS949"));
    	while ((s = stdOut.readLine()) != null) {
    		if (cnt==0) {
    			map.put("title", s);
    			cnt++;
    		} else if(cnt==1) {
    			map.put("genre", s);
    			cnt++;
    		} else {
    			map.put("actor", s);
    			cnt=0;
    		}
    		list.add(map);
    	}
    	while ((s = stdError.readLine()) != null) 
    		System.err.println(s);

		return list;
	}

	@Override
	public void input(MovieVO input) {
		// TODO Auto-generated method stub
		mapper.input(input);
	}

	@Override
	public List<MovieVO> inputList() {
		// TODO Auto-generated method stub
		return mapper.inputList();
	}

	@Override
	public List<String> recommend() throws Exception {
		List<String> list = new ArrayList<String>();
		int cnt=0;
		Process oProcess;
		String s="";
		
		//oProcess =new ProcessBuilder("python","C:\\Users\\MIT1\\git\\ott\\ott_plus\\DEV\\spring_workspace\\ott_plus\\Recommend.py").start();
		oProcess =new ProcessBuilder("python","/opt/tomcat/webapps/ott_plus/Recommend.py").start();
		BufferedReader stdOut   = new BufferedReader(new InputStreamReader(oProcess.getInputStream(),"MS949"));
    	BufferedReader stdError = new BufferedReader(new InputStreamReader(oProcess.getErrorStream(),"MS949"));
    	while ((s = stdOut.readLine()) != null) {
    		
    		if (cnt==0) {
    			//map.put("title", s);
    			cnt++;
    			list.add(s);

    		} else {
    			//map.put("img", s);
    			cnt=0;
    			list.add(s);

    		}
    		
    		//System.out.println(list);
    	}
    	while ((s = stdError.readLine()) != null) 
    		System.err.println(s);
		
    	
		return list;
	}


}
