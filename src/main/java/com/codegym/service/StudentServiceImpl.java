package com.codegym.service;

import com.codegym.model.Student;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Service
public class StudentServiceImpl implements  StudentService{
    private static Map<Integer, Student> students;
    static {
        students =new HashMap<>();
        students.put(1,new Student(1,"Thư",22,"Quang Nam","Nữ","15CTUD2"));
        students.put(2,new Student(2,"Ly",22,"Da Nang","Nam","15ST"));
    }
    @Override
    public List<Student> findAll() {
        return new ArrayList<>(students.values());
    }

    @Override
    public void save(Student customer) {
        students.put(customer.getId(), customer);
    }

    @Override
    public Student findById(int id) {
        return students.get(id);
    }

    @Override
    public void update(int id, Student customer) {
        students.put(id, customer);
    }

    @Override
    public void remove(int id) {
        students.remove(id);
    }

}

