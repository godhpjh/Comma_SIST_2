package comma.sist.review.dao;

import java.util.List;

import comma.sist.guide.dao.GuideVO;
import comma.sist.tourist.dao.TouristVO;

public class ReviewVO {
	private int review_no;
	private int guide_no;
	private String user_id;
	private int review_score;
	private String review_text;
	private List<GuideVO> GuideVO;
	

	public List<GuideVO> getGuideVO() {
		return GuideVO;
	}
	public void setGuideVO(List<GuideVO> guideVO) {
		GuideVO = guideVO;
	}

	public int getReview_no() {
		return review_no;
	}
	public void setReview_no(int review_no) {
		this.review_no = review_no;
	}
	public int getGuide_no() {
		return guide_no;
	}
	public void setGuide_no(int guide_no) {
		this.guide_no = guide_no;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getReview_score() {
		return review_score;
	}
	public void setReview_score(int review_score) {
		this.review_score = review_score;
	}
	public String getReview_text() {
		return review_text;
	}
	public void setReview_text(String review_text) {
		this.review_text = review_text;
	}
	
}
