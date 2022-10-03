package com.goodee.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.goodee.vo.TestVO2;

@Mapper
public interface ExampleDAO2 {
	
	public List<TestVO2> selectData();
	public int insertData(TestVO2 vo);
	public int updateData(TestVO2 vo);
	public int updateData2(TestVO2 vo);
	public List<TestVO2> selectId(TestVO2 vo);
	public int deleteData(TestVO2 vo); 
	public int deleteData2(TestVO2 vo);
}
