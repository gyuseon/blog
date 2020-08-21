package com.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.domain.Criteria;
import com.spring.domain.ReplyVO;

public interface ReplyMapper {
	
	//���
	public int insert_reply(ReplyVO vo);
	//�б�
	public ReplyVO read(int rno);
	//����
	public int update(ReplyVO vo);
	//����
	public int delete(int rno);
	//��� ��ü ��������
	public List<ReplyVO> list(@Param("cri") Criteria cri, @Param("bno") int bno);
	//��ü ��ۼ�
	public int getCountByBno(int bno);
	
}
