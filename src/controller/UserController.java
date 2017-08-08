package controller;

import entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import service.UserService;

import javax.servlet.http.HttpSession;

@Controller
public class UserController {
    @Autowired
    private UserService userService;
/*    用户注册信息*/
    @RequestMapping("register")
    public  String register(User user){
        if (userService.insertUser(user)){
            return "login";
        }
        else{
            return "注册失败";
        }
    }
/*    登录用户信息*/
    @RequestMapping("login")
    @ResponseBody
    public boolean selectUser(User user,HttpSession session){
       User newUser=userService.selectUser(user);
       session.setAttribute("user",newUser);
       return newUser!=null;
    }
   /* 点击发布，判断用户是否已经登录，如果已登录就跳到发布页面，反之，进入用户登录*/
    @RequestMapping("/publishAble")
    public String selectUser(HttpSession session) {
        User user = (User) session.getAttribute("user");
        if (user != null) {
            return "publish";
        } else {
            return "login";
        }
    }
}
