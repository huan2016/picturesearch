package com.kb210.videoplay.controller;

import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.kb210.videoplay.service.IConnectService;

@Controller
public class MainController {
	
	@Autowired 
	private IConnectService connectService;
	
	@RequestMapping("/")
	public String gallery() {
		return "gallery";
	}
	@RequestMapping(value="/single")
	public String single(){
		return "single";	
	}
	
	@RequestMapping(value="/search")
	@ResponseBody
	public Map<String, Object> search(@RequestParam(value="videoid")Integer videoid,@RequestParam(value="currentsecond")double currentsecond){
		int tem=(int) Math.floor(currentsecond);
		String currenttime="%-"+tem;
		String tmp="12";
		String str=connectService.findById_Time(videoid,currenttime);
		String[] paths=str.split(";");
		for(int i=0;i<paths.length;i++ ){
			tmp=paths[i];
			paths[i]="res/video/image/"+tmp;
		}
		for(String newstr:paths){
			System.out.println(newstr);
		}
		Map<String, Object> res = new HashMap<String, Object>();
		res.put("content", paths);
		return res;
	}
}
