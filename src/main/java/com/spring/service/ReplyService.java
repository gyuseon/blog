package com.spring.service;

import java.util.List;

import com.spring.domain.Criteria;
import com.spring.domain.ReplyVO;

public interface ReplyService {

	public boolean replyInsert(ReplyVO vo);
	
	public ReplyVO replyGet(int rno);
	
	public boolean replyUpdate(ReplyVO vo);
	
	public boolean replyDelete(int rno);
	
	public List<ReplyVO> replyList(Criteria cri, int bno);
	
	public int getCount(int bno);
}
