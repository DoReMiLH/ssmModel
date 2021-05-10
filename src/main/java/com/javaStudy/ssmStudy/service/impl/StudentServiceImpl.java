package com.javaStudy.ssmStudy.service.impl;

import com.javaStudy.ssmStudy.dao.StudentDao;
import com.javaStudy.ssmStudy.domain.Student;
import com.javaStudy.ssmStudy.service.StudentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author: hu
 * @create: 2021-04-29 19:09
 */
@Service
public class StudentServiceImpl implements StudentService {
  //引用类型的自动注入@AutoWired，@Resource
  @Resource
  private StudentDao studentDao;
  @Override
  public int insertStudent(Student student) {
    int nums = studentDao.insertStudent(student);
    return nums;
  }

  @Override
  public List<Student> findStudent() {
    return studentDao.selectStudent();
  }
}
