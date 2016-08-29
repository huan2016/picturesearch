package com.kb210.videoplay.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface ConnectMapper {
	public List<Integer> findCommodityId(@Param("videoid")Integer videoid, @Param("currenttime")String currenttime);
}
