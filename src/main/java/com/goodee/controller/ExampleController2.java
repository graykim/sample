package com.goodee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.goodee.service.ExampleService2;
import com.goodee.vo.TestVO2;

@Controller
@RequestMapping("/example2") // 수정하지 말 것
public class ExampleController2 {
	
	private ExampleService2 service;
	
	public ExampleController2(ExampleService2 service) {
		super();
		this.service = service;
	}
	
	// 1번 문제
	@GetMapping
	public String index(Model model) {
		model.addAttribute("list", service.getTable());
		
		return "example2/index";
	}
	
	// 2번 문제
	@GetMapping("/result1")
	public String result1(@ModelAttribute TestVO2 vo) {

		service.setInsertData(vo);

			System.out.println("db 입력 성공");
			return "redirect:/example2";

	}
	
	// 3번 문제
	@PostMapping("/result2")
	public String result2(@ModelAttribute TestVO2 vo) {
		service.setInsertData(vo);
		return "redirect:/example2";
	}
	
	// 4번 문제
	@PostMapping("/result3")
	@ResponseBody
	public TestVO2 result3(@RequestBody TestVO2 vo) {
		service.setInsertData(vo);
		return vo;
	}
	
	// 5번 문제
	@PostMapping("/result4")
	public String result4(@ModelAttribute TestVO2 vo) {
		service.setUpdateData(vo);
		return "redirect:/example2";
	}
	
	// 6번 문제
	@PostMapping("/result5")
	public String result5(@ModelAttribute TestVO2 vo) {
		service.setUpdateData2(vo);
		return "redirect:/example2";
	}
	
	// 7번 문제 - 1 페이지 이동
	@PostMapping("/move6")
	public String move6(@ModelAttribute("vo") TestVO2 vo) {
		vo.setData1(service.getSelectId(vo).get(0).getData1());
		vo.setData2(service.getSelectId(vo).get(0).getData2());
		vo.setData3(service.getSelectId(vo).get(0).getData3());

		service.getSelectId(vo);
		return "example2/result/result1";
	}
	
	// 7번 문제 - 2 업데이트 진행
	@GetMapping("/update")
	public String result6(@ModelAttribute TestVO2 vo) {
		System.out.println(vo);
		service.setUpdateData(vo);
		return "redirect:/example2";
	}
	
	// 8번 문제
	@PostMapping("/result7")
	public String result7(@ModelAttribute TestVO2 vo) {
		service.setDeleteData(vo);
		return "redirect:/example2";
	}
	
	// 9번 문제
	@PostMapping("/result8")
	public String result8(@ModelAttribute TestVO2 vo) {
		service.setDeleteData2(vo);
		return "redirect:/example2";
	}
}
