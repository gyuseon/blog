package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.Criteria;
import com.spring.domain.ReplyPageVO;
import com.spring.domain.ReplyVO;
import com.spring.mapper.ReplyMapper;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	private ReplyMapper reply;
	
	@Override
	public boolean replyInsert(ReplyVO vo) {
		return reply.insert_reply(vo)==1?true:false;
	}

	@Override
	public ReplyVO replyGet(int rno) {
		return reply.read(rno);
	}

	@Override
	public boolean replyUpdate(ReplyVO vo) {
		return reply.update(vo)==1?true:false;
	}

	@Override
	public boolean replyDelete(int rno) {
		
		
		return reply.delete(rno)==1?true:false;
	}

	@Override
	public ReplyPageVO replyList(Criteria cri, int bno) {
		
		return new ReplyPageVO(reply.getCountByBno(bno),reply.list(cri, bno));
	}



	

}
