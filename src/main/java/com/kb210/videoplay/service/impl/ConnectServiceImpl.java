package com.kb210.videoplay.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.kb210.videoplay.mapper.ConnectMapper;
import com.kb210.videoplay.service.IConnectService;

@Service
public class ConnectServiceImpl implements IConnectService {

	@Autowired
	private ConnectMapper connectMapper;
	
	public String findById_Time(Integer videoid, String currenttime){
		return connectMapper.findById_Time(videoid,currenttime);
		
	}
	
}
