package com.javaStudy.ssmStudy.service;

import com.javaStudy.ssmStudy.domain.Student;

import java.util.List;

public interface StudentService {
  int insertStudent(Student student);
  List<Student> findStudent();
}
