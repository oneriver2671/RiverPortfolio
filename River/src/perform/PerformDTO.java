package perform;

public class PerformDTO {
	
	int perform_num;		// PK. 
	String perform_title;	// 제목
	String perform_date;    // 날짜 + 시간 (datetime)
	String location;		// 공연 장소
	String program_title;	// 프로그램명
	String artist_main;		// 메인 아티스트
	String artist_collabo;	// 협연자
	int running_time;		// 러닝타임
	int intermission;		// 인터미션 시간
	String main_img;		// 포스터 사진
	String sub_img;		    // 기타 이미지
	String intro_text;		// 간략한 소개글
	String artist_introText;	// 연주자 소개글
	String perform_host;		// 주최
	int limit_age;			// 관람연령제한
	int like_num;		    // 좋아요 수
	int possible_seat;		// 남은 자리수
	String open_date;		// 티켓예매 날짜
	
	
	public int getPerform_num() {
		return perform_num;
	}
	public void setPerform_num(int perform_num) {
		this.perform_num = perform_num;
	}
	public String getPerform_title() {
		return perform_title;
	}
	public void setPerform_title(String perform_title) {
		this.perform_title = perform_title;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getPerform_date() {
		return perform_date;
	}
	public void setPerform_date(String perform_date) {
		this.perform_date = perform_date;
	}
	public String getProgram_title() {
		return program_title;
	}
	public void setProgram_title(String program_title) {
		this.program_title = program_title;
	}
	public String getArtist_main() {
		return artist_main;
	}
	public void setArtist_main(String artist_main) {
		this.artist_main = artist_main;
	}
	public String getArtist_collabo() {
		return artist_collabo;
	}
	public void setArtist_collabo(String artist_collabo) {
		this.artist_collabo = artist_collabo;
	}
	public int getRunning_time() {
		return running_time;
	}
	public void setRunning_time(int running_time) {
		this.running_time = running_time;
	}
	public int getIntermission() {
		return intermission;
	}
	public void setIntermission(int intermission) {
		this.intermission = intermission;
	}
	public String getMain_img() {
		return main_img;
	}
	public void setMain_img(String main_img) {
		this.main_img = main_img;
	}
	public String getSub_img() {
		return sub_img;
	}
	public void setSub_img(String sub_img) {
		this.sub_img = sub_img;
	}
	public String getIntro_text() {
		return intro_text;
	}
	public void setIntro_text(String intro_text) {
		this.intro_text = intro_text;
	}
	public String getArtist_introText() {
		return artist_introText;
	}
	public void setArtist_introText(String artist_introText) {
		this.artist_introText = artist_introText;
	}
	public String getPerform_host() {
		return perform_host;
	}
	public void setPerform_host(String perform_host) {
		this.perform_host = perform_host;
	}
	public int getLimit_age() {
		return limit_age;
	}
	public void setLimit_age(int limit_age) {
		this.limit_age = limit_age;
	}
	public String getOpen_date() {
		return open_date;
	}
	public void setOpen_date(String open_date) {
		this.open_date = open_date;
	}
	public int getLike_num() {
		return like_num;
	}
	public void setLike_num(int like_num) {
		this.like_num = like_num;
	}
	public int getPossible_seat() {
		return possible_seat;
	}
	public void setPossible_seat(int possible_seat) {
		this.possible_seat = possible_seat;
	}
	
}