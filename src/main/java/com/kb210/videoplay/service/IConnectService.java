package com.kb210.videoplay.service;

import java.util.List;

public interface IConnectService {

	public List<Integer> findCommodityId(Integer videoid, String currenttime);
	
}
