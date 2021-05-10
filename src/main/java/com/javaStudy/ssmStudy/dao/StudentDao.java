package com.javaStudy.ssmStudy.dao;

import com.javaStudy.ssmStudy.domain.Student;

import java.util.List;

public interface StudentDao {
  int insertStudent(Student student);
  List<Student> selectStudent();
}
