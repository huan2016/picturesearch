package com.kb210.videoplay.mapper;

import org.apache.ibatis.annotations.Param;

public interface ConnectMapper {
	public String findById_Time(@Param("videoid")Integer videoid, @Param("currenttime")String currenttime);
}
