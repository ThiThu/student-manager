package com.codegym.controller;

import com.codegym.model.Student;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.codegym.service.StudentService;
import com.codegym.service.StudentServiceImpl;
import org.springframework.web.portlet.ModelAndView;

import java.util.List;

@Controller
public class StudentSeverlet {

    StudentService studentService = new StudentServiceImpl(   );

    @RequestMapping(value = "/list")
    public String list(Model model) {
        List<Student> students = this.studentService.findAll();
        model.addAttribute("students", students);
        return "index";
    }
    @GetMapping(value = "/create")
    public String create(Model model, @ModelAttribute("nganchan") Student student) {
        return "create";
    }

    @PostMapping(value = "/create")
    public String createNewStudent(Model model, @ModelAttribute("nganchan") Student student) {
        studentService.save(student);
        return list(model);
    }
    @RequestMapping(value = "/edit")
    public String edit(@RequestParam int id,Model model) {

        Student student = studentService.findById(id);
       model.addAttribute("student", student);
        return "edit";
    }

   @PostMapping(value = "/edit")
    private String editNewStudent(@ModelAttribute("id") Student student, Model model) {

        studentService.update(student.getId(), student);
        model.addAttribute("student",this.studentService.findAll());
        model.addAttribute("message", "Successful");
        return list(model);
    }

    @GetMapping("/delete")
    private String showDelete(@RequestParam int id,Model model) {
        this.studentService.remove(id);
      model.addAttribute("student", this.studentService.findAll());
        return list(model);
    }


}