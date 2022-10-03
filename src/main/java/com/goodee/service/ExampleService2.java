package com.goodee.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.goodee.dao.ExampleDAO2;
import com.goodee.vo.TestVO2;

@Service
public class ExampleService2 {
	
	private ExampleDAO2 dao;

	public ExampleService2(ExampleDAO2 dao) {
		super();
		this.dao = dao;
	}
	
	public List<TestVO2> getTable() {
		return dao.selectData();
	}
	
	public int setInsertData(TestVO2 vo) {
		return dao.insertData(vo);
	}
	
	public int setUpdateData(TestVO2 vo) {
		return dao.updateData(vo);
	}
	
	public List<TestVO2> getSelectId(TestVO2 vo) {
		return dao.selectId(vo);
	}
	
	public int setUpdateData2(TestVO2 vo) {
		return dao.updateData2(vo);
	}
	
	public int setDeleteData(TestVO2 vo) {
		return dao.deleteData(vo);
	}
	
	public int setDeleteData2(TestVO2 vo) {
		return dao.deleteData2(vo);
	}
	
}
