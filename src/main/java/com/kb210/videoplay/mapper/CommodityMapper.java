package com.kb210.videoplay.mapper;

import org.apache.ibatis.annotations.Param;

import com.kb210.videoplay.entity.Commodity;

public interface CommodityMapper {

public Commodity findCommodityById( @Param("integer") Integer integer);

}
