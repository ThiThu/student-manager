package com.codegym.service;

import com.codegym.model.Student;

import java.util.List;

public interface StudentService {
    List<Student> findAll();
    void save (Student student);
    Student findById(int id);

    void remove(int id);

    void update(int id,Student student);
}

