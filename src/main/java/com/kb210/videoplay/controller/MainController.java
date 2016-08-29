package com.kb210.videoplay.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kb210.videoplay.entity.Commodity;
import com.kb210.videoplay.service.ICommodityService;
import com.kb210.videoplay.service.IConnectService;

@Controller
public class MainController {
	
	@Autowired 
	private IConnectService connectService;
	
	@Autowired
	private ICommodityService commodityService;
	
	@RequestMapping("/")
	public String gallery() {
		return "gallery";
	}
	@RequestMapping(value="/single")
	public String single(){
		return "single";	
	}
	
	@SuppressWarnings("null")
	@RequestMapping(value="/search")
	@ResponseBody
	public Map<String, Object> search(@RequestParam(value="videoid")Integer videoid,@RequestParam(value="currentsecond")double currentsecond){
		int tem=(int) Math.floor(currentsecond);
		String currenttime="%-"+tem+"-%";
		List<Integer> commodityidlist=connectService.findCommodityId(videoid, currenttime);
		List<Commodity> tmp = new ArrayList<Commodity>();
		for(Integer integer:commodityidlist){
			
			tmp.add(commodityService.findCommodityById(integer));
		}
		Map<String, Object> res = new HashMap<String, Object>();
		res.put("content", tmp);
		return res;
	}
}
