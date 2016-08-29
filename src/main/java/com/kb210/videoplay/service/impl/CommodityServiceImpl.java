package com.kb210.videoplay.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kb210.videoplay.entity.Commodity;
import com.kb210.videoplay.mapper.CommodityMapper;
import com.kb210.videoplay.service.ICommodityService;

@Service
public class CommodityServiceImpl implements ICommodityService{
	@Autowired 
	private CommodityMapper commodityMapper;

	public Commodity findCommodityById(Integer integer) {
		// TODO Auto-generated method stub
		return commodityMapper.findCommodityById(integer);
	}

}
