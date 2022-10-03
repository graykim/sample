package com.goodee.controller;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.goodee.vo.TestVO1;


@Controller
@RequestMapping("/example1") // 수정하지 말 것
public class ExampleController1 {
	
	@GetMapping
	public String moveIndex() {
		return "example1/index";
	}
	
	// 목적지 example1/result/result1
	@GetMapping("/result1")
	public String result1() {
		return "example1/result/result1";
	}
	
	// 목적지 example1/result/result2
	@GetMapping("/result2")
	public String result2() {
		return "example1/result/result2";
	}
		
	// 목적지 example1/result/aaa/result3
	@GetMapping("aaa/result3")
	public String result3() {
		return "example1/result/aaa/result3";
	}
		
	// 목적지 example1/result/aaa/result4
	@GetMapping("/xxx/result4")
	public String result4() {
		return "example1/result/aaa/result4";
	}
	
	// 쿼리로 오는 데이터는 문자열 변수 두개에 받아 처리하세요
	// 목적지 example1/result/aaa/bbb/result5
	@GetMapping("/abc/abc/result5")
	public String result5(Model model,@RequestParam("test1") String test1,@RequestParam("test2") String test2) {
		model.addAttribute("test1", test1);
		model.addAttribute("test2", test2);
		return "/example1/result/aaa/bbb/result5";
	}
	
	// 쿼리로 오는 데이터는 문자열 변수와 배열로 받아 처리하세요
	// 목적지 example1/result/aaa/bbb/result6
	@GetMapping("/ccc/re6")
	public String result6(Model model,@RequestParam("test1")String test1,
						@RequestParam("test2") String[] test2) {
		model.addAttribute("test1",test1);
		model.addAttribute("test2",test2);
		return "/example1/result/aaa/bbb/result6";
	}
	
	// 쿼리로 오는 데이터는 문자열 배열로 받아 처리하세요
	// 목적지 example1/result/aaa/ccc/result7
	@GetMapping("result7")
	public String result7(Model model, @RequestParam("test1") String[] test1,
							@RequestParam("test2")String[] test2) {
		model.addAttribute("test1",test1);
		model.addAttribute("test2",test2);
		
		return "example1/result/aaa/ccc/result7";
	}
	
	// 쿼리로 오는 데이터는 Map으로 받아 처리하세요
	// 목적지 example1/result/aaa/ccc/result8
	@GetMapping("result8")
	public String result8(Model model,@RequestParam Map<String,String> map) {
		model.addAttribute("test1", map.get("test1"));
		model.addAttribute("test2", map.get("test2"));
		model.addAttribute("test3", map.get("test3"));

		return "example1/result/aaa/ccc/result8";
	}
	
	// 쿼리로 오는 데이터는 TestVO1에 받아 처리하세요(Model 사용하지 말 것)
	// 목적지 example1/result/aaa/bbb/ddd/result9
	@GetMapping("result9")
	public String result9(@ModelAttribute("vo") TestVO1 vo) {
		return "example1/result/aaa/bbb/ddd/result9";
	}
	
	// 쿼리로 오는 데이터는 TestVO1과 리스트에 담아 처리하세요
	// 목적지 example1/result/aaa/bbb/ddd/result10
	@GetMapping("result10")
	public String result10(Model model,@ModelAttribute("vo") TestVO1 vo, @RequestParam("test4") List<String> list) {
		model.addAttribute("list", list);
		return "example1/result/aaa/bbb/ddd/result10";
	}
}











