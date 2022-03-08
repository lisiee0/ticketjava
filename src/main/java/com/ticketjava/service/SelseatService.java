package com.ticketjava.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticketjava.dao.SelseatDao;
import com.ticketjava.vo.SelseatVo;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Service
public class SelseatService {

	@Autowired
	private SelseatDao selseatDao;
	
	public List<SelseatVo> selList() {
		return selseatDao.selectList();
	}

	public List<SelseatVo> selList(int[] selseatNo) {
		return selseatDao.selectSelList(selseatNo);
	}

	
	public void modifyDcPay(String data) {
		
		JSONArray array = JSONArray.fromObject(data);
		for(int i=0; i<array.size(); i++) {
			JSONObject obj = (JSONObject)array.get(i);
			
			SelseatVo selseatVo = new SelseatVo();
			int selseatNo = Integer.parseInt(String.valueOf(obj.get("selseatNo")));
			int dcNo = Integer.parseInt(String.valueOf(obj.get("dcNo")));
			int payment = Integer.parseInt(String.valueOf(obj.get("payment")));
			
			selseatVo.setSelseatNo(selseatNo);
			selseatVo.setDcNo(dcNo);
			selseatVo.setPayment(payment);
			
			selseatDao.updateDcPay(selseatVo);
		}
		
	}

}
