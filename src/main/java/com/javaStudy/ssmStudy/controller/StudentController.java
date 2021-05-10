package com.javaStudy.ssmStudy.controller;

import com.javaStudy.ssmStudy.domain.Student;
import com.javaStudy.ssmStudy.service.StudentService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author: hu
 * @create: 2021-04-29 19:15
 */
@RequestMapping(value = "/student")
@Controller
public class StudentController {
  @Resource
  private StudentService service;

  @RequestMapping(value = "/addStudent.do")
  public ModelAndView addStudent(Student student){
    String tips = "注册失败";
    ModelAndView mv = new ModelAndView();
    int nums = service.insertStudent(student);
    if (nums>0){
      tips = "学生【" + student.getName() + "】注册成功";
    }
    mv.addObject("msg",tips);
    mv.setViewName("register");
    return mv;
  }

  //处理查询，响应ajax
  @RequestMapping(value = "/queryStudent.do")
  @ResponseBody
  public List<Student> queryStudent(){
    List<Student> students = service.findStudent();
    return students;
  }
}
