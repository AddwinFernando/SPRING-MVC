package com.addwin;

import Database.DbConnection;
import Database.UserDb;
import model.Student;
import model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.support.AbstractMultipartHttpServletRequest;
import org.springframework.web.multipart.support.RequestPartServletServerHttpRequest;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Arrays;

@Controller
public class HomeController {
    UserDb userDb;
    public HomeController(){
        DbConnection.getConection();
        this.userDb = new UserDb();
    }
    @RequestMapping(value = "/")
    public String showPage(Model model){
        User user = new User();
        model.addAttribute("user",user);
        return "index";
    }
    @RequestMapping("/register")
    public String showRegisterPage(@ModelAttribute("user")User user){
        userDb.registerUser(user.getName(), user.getPassword(), user.getGender(), user.getLanguage(), user.getCountry());
        return "register";
    }
    @RequestMapping("/home")
    public String showHomePage(@ModelAttribute("user") User user,Model model){
        ArrayList<User> users = userDb.getUsers();
        model.addAttribute("users",users);
        if(userDb.validate(user.getName(), user.getPassword())){
            return"home";
        } else {
            return "index";
        }

    }

}
