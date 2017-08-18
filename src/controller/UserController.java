package controller;

import entities.Course;
import entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import service.CourseService;
import service.UserService;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private CourseService courseService;
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
    public boolean selectUser(User user, HttpSession session){
       User newUser=userService.selectUser(user);
       /*查询用户是否登录*/
        session.setAttribute("user",newUser);
        /*查询index界面的最新美食*/
       List<Course> courses= courseService.selectIndexNewCate();
        session.setAttribute("indexNewCateName",courses);
        /*查询index界面的精选美食*/
        List<Course> choiceCourse= courseService.selectIndexchoiceCourse();
        session.setAttribute("selectIndexchoiceCourseName",choiceCourse);
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
