package com.table.zzimkong.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.table.zzimkong.mapper.ReviewMapper;
import com.table.zzimkong.vo.MemberVO;
import com.table.zzimkong.vo.MenuVO;
import com.table.zzimkong.vo.ReviewCountVO;
import com.table.zzimkong.vo.ReviewMenuVO;
import com.table.zzimkong.vo.ReviewVO;

@Service
public class ReviewService {
	@Autowired
	private ReviewMapper mapper;

	// 리뷰글 등록 요청
	public int registReview(ReviewVO review) {
		
		return mapper.insertReview(review);
	}

	// 업체 이름 불러오기
	public String getCompanyName(int comId) {

		return mapper.selectCompanyName(comId);
	}

	// 리뷰글 갯수
	public int getReviewCount(int comId) {

		return mapper.countReview(comId);
	}

	// 리뷰 별점 평균 계산
	public Double getReviewAverage(int comId) {

		return mapper.averageReview(comId);
	}
	
	// 리뷰 리스트 
	public List<ReviewVO> getAllReviews(int comId) {
		
		return mapper.allReviewList(comId);
	}
	
	// 리뷰 수정
	public ReviewVO getReivew(int reviewNum) {

		return mapper.modifyReview(reviewNum);
	}

	// 리뷰 삭제
	public int removeReview(ReviewVO review) {

		return mapper.removeReview(review);
	}
	
	// 리뷰 수정 시 파일 삭제
	public int removeReviewFile(ReviewVO review) {

		return mapper.updateReviewFile(review);
	}
	
	// 리뷰 수정 요청
	public int modifyReview(ReviewVO review) {

		return mapper.updateReview(review);
	}
	
	// 리뷰 내용 가져오기
	public ReviewVO getReview(int reviewNum) {
		
		return mapper.getReview(reviewNum);
	}

	// =========================================================================
	// 이런 점이 좋았어요
	public List<ReviewCountVO> getReviewCountsByComId(int comId) {

		return mapper.countReviewsByComId(comId);
	}

	
	// =========================================================================
	// 리뷰 정렬(최신순/별점높은순/별점낮은순 - 사진/영상 리뷰만 보기)
	public List<ReviewVO> getReviewsSortedByNewest(int comId) {

		return mapper.selectReviewsByNewest(comId);
	}

	public List<ReviewVO> getReviewsSortedByScore(int comId, boolean isHighest) {

	    return isHighest ? mapper.selectReviewsByHighestScore(comId) : 
	    				   mapper.selectReviewsByLowestScore(comId);
	}

	
//	public List<ReviewVO> getSortedReviews(int comId, 
//            String sortType,
//            boolean photoOnly,
//            String menuName) {
//
//		return mapper.getSortedReviews(comId, sortType,photoOnly,menuName);
//	}

	public List<ReviewVO> getSortedReviews(int comId, String sortType, boolean photoOnly, String menuName) {
	    if (menuName != null && !menuName.isEmpty()) {
	        // menuName 파라미터가 있는 경우, menuName에 따라 리뷰 필터링
	        return mapper.selectReviewsByMenuName(comId, menuName);
	    } else {
	        // 그렇지 않은 경우, 기존의 sortType 및 photoOnly 조건에 따라 필터링
	        return mapper.getSortedReviews(comId, sortType, photoOnly, menuName);
	    }
	}
	
	// =========================================================================
	// 메뉴 불러오기 
	public List<String> getMenuNamesByComId(int comId) {

		return mapper.selectReviewMenu(comId);
	}

	// =========================================================================
	// [ 신고창에 회원정보 불러오기 (메일주소/폰번호) ] 
	public MemberVO getUserInfo(String sId) {

		return mapper.findUserById(sId);
	}
	
	// [ 리뷰 신고 ]
	public int registReviewReport(ReviewVO review) {

		return mapper.insertReviewReport(review);
	}

	public List<ReviewVO> getReviewsByMenuName(int comId, String menuName) {

		return mapper.selectReviewsByMenuName(comId, menuName);
	}

	// 키워드 검색
	public List<ReviewVO> filterReviewsByCategory(int comId, String category) {
			System.out.println("키워드 확인>>>>> " + comId + category);
			ReviewVO vo = new ReviewVO();
			vo.setCom_id(comId);
			vo.setCategory(category);
		return mapper.selectReviewsByCategory(vo);
	}
	

}