package com.addwin;

import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/student")
public class StudentController {
    @RequestMapping("/studentform")
    public String showStudentPage(){
        return "studentform";
    }
}
