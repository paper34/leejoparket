package com.trade.project.product;

import java.util.List;

public interface ReplyDAOInterface {

	int delete(ReplyVO vo);

	int create(ReplyVO vo);

	List<ReplyVO> list2(int original);

}