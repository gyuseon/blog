package com.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.domain.Criteria;
import com.spring.domain.ReplyVO;

public interface ReplyMapper {
	
	//등록
	public int insert_reply(ReplyVO vo);
	//읽기
	public ReplyVO read(int rno);
	//수정
	public int update(ReplyVO vo);
	//삭제
	public int delete(int rno);
	//댓글 전체 가져오기
	public List<ReplyVO> list(@Param("cri") Criteria cri, @Param("bno") int bno);
	//전체 댓글수
	public int getCountByBno(int bno);
	
}
