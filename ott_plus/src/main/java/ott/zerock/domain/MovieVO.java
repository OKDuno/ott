package ott.zerock.domain;



import lombok.Data;
import lombok.Getter;


@Getter
@Data
public class MovieVO {
	
	
	private String movie_title;
	private String movie_actor;
	private String movie_genre;	
	private String movie_grade;
	private String userId;
}
