package com.crm.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.crm.entity.Fenye;
import com.crm.entity.Students;
import com.crm.service.StudentsService;

@Controller
public class StudentsController {
	@Autowired
	private StudentsService studentsService;


	@RequestMapping(value="/stuss",method=RequestMethod.POST)
	@ResponseBody
	public Fenye<Students> Stus(Fenye<Students> fenye,Integer rows,Integer page) {
		System.out.println(page);
		System.out.println(rows);
		System.out.println(fenye);
		fenye.setPage((page-1)*rows);
		fenye.setPageSize(rows);
		Fenye<Students> selectStu = studentsService.selectStu(fenye);
		return selectStu;	
	}
	
	
}
