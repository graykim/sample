package com.goodee.vo;

import org.apache.ibatis.type.Alias;

@Alias("testVO1")
public class TestVO1 {
	private String test1;
	private String test2;
	private String test3;
	
	public String getTest1() {
		return test1;
	}
	public void setTest1(String test1) {
		this.test1 = test1;
	}
	public String getTest2() {
		return test2;
	}
	public void setTest2(String test2) {
		this.test2 = test2;
	}
	public String getTest3() {
		return test3;
	}
	public void setTest3(String test3) {
		this.test3 = test3;
	}
	
	
	
}
