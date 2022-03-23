package com.ticketjava.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ticketjava.vo.DetailVo;

@Repository
public class DetailDao {

	@Autowired
	private SqlSession sqlsession;

	// 공연 상세정보 등록 <<<<< 공연번호 등록
	public void detailNoAdd(DetailVo detailVo) {
		System.out.println("DetailDao > detailNoAdd");

		sqlsession.insert("detail.detailNoAdd", detailVo);
	}

	
	// 공연 이미지파일 업데이트 <<<<< 공연 정보
	public void prodAdd(DetailVo detailVo) {
		System.out.println("DetailDao > prodAdd");

		sqlsession.update("detail.prodAdd", detailVo);
	}
	

	// 공연 이미지파일 업데이트 <<<<< 캐스팅 정보
	public void castingAdd(DetailVo detailVo) {
		System.out.println("DetailDao > castingAdd");

		sqlsession.update("detail.castingAdd", detailVo);
	}

	// 공연 이미지파일 업데이트 <<<<< 부가 정보
	public void addedAdd(DetailVo detailVo) {
		System.out.println("DetailDao > addedAdd");

		sqlsession.update("detail.addedAdd", detailVo);
	}
	
	
	//////////////////////////////////////////////////////////////////////
	
	//공연 수정 상세정보 가져오기
	public DetailVo bmgetDetail(int prodNo) {
		System.out.println("DetailDao > bmgetDetail");
		
		return sqlsession.selectOne("detail.bmgetDetail", prodNo);
	}
	

	// 공연 이미지파일 수정 <<<<< 공연 정보
	public void prodmodify(DetailVo detailVo) {
		System.out.println("DetailDao > prodmodify");

		sqlsession.update("detail.prodmodify", detailVo);
	}
	

	// 공연 이미지파일 수정 <<<<< 캐스팅 정보
	public void castingModify(DetailVo detailVo) {
		System.out.println("DetailDao > castingModify");

		sqlsession.update("detail.castingAdd", detailVo);
	}

	// 공연 이미지파일 수정 <<<<< 부가 정보
	public void addedModify(DetailVo detailVo) {
		System.out.println("DetailDao > addedModify");

		sqlsession.update("detail.addedAdd", detailVo);
	}

	// 호준이형님이 작업하신거
	public DetailVo getDetail(int prodNo) {
		return sqlsession.selectOne("detail.getDetail", prodNo);
	}

}
