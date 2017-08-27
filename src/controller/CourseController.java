package controller;
import entities.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import service.CourseService;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class CourseController {
    @Autowired
    private CourseService courseService;

    /*添加菜*/
    @RequestMapping("/addCourse")
    @ResponseBody
    public boolean addCourse(Course course, HttpSession session) {
        /*获取当前时间*/
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd  hh:mm:ss");
        String currentDate = sdf.format(date);
        /*将当前时间设置到菜表*/
        course.setC_date(currentDate);
        /*获取第一张图片，将第一张设置course中*/
        String firstImgPath = (String) session.getAttribute("firstImgPath");
        course.setC_firstImage(firstImgPath);
        /*获取user对象*/
        User user = (User) session.getAttribute("user");
        User user1 = new User();
        user1.setU_id(user.getU_id());
        user1.setUsername(user.getUsername());
       /* 把user1添加到course中*/
        course.setUser(user1);
        boolean b=courseService.insertCourse(course);
        /*当前添加菜设置在session中*/
        session.setAttribute("currentShowCourse",course);
        return b;
    }

    /*上传图片*/
    @RequestMapping("/upload")
    @ResponseBody
    public FilePathResponse upload(MultipartFile file, HttpServletRequest request, HttpSession session) throws IOException {
        /*获取完整的路径名*/
        String path = request.getServletContext().getRealPath("/upload/") + file.getOriginalFilename();
        /*将上传文件保存到相应位置*/
        file.transferTo(new File(path));
        /*设置具体的位置*/
        file.transferTo(new File("E:/IntelliJ IDEA Project/SSM/web/upload/" + file.getOriginalFilename()));
        FilePathResponse path1 = new FilePathResponse();
        /*文件设置在path1中*/
        path1.setLink("/upload/" + file.getOriginalFilename());
       /* 获取第一张图片*/
        String firstImgPath = (String) session.getAttribute("firstImgPath");
        if (firstImgPath == null) {
            session.setAttribute("firstImgPath", "/upload/" + file.getOriginalFilename());
        }
        return path1;
    }
    /*通过菜的id修改点赞数*/
    @RequestMapping("updateCoursePraise/{c_id}")
    @ResponseBody
    public boolean updateCoursePraise(@PathVariable("c_id") Integer c_id, HttpSession session, Praise praise) {
        /*获取用户*/
         User user=(User) session.getAttribute("user");
        /* 将用户的id设置在菜表*/
        praise.setU_id(user.getU_id());
        /*查询用户是否点赞*/
        Praise praiseUser = courseService.selectPraise(praise);
        if (praiseUser != null) {
            return  false;
        } else {
            courseService.updateCoursePraise(c_id);
            courseService.insertPrise(praise);
            return true;
        }
    }
    /*查询属于一种类型的菜*/
    @RequestMapping("/selectAllCourseAndPage")
    public String selectAllCourse(Condition condition, Model model) {
        model.addAttribute("selectCoursePaging",courseService.selectAllCourseAndPage(condition));
        return "menuClassifiesAndPage";
    }
  /* *//*查询上传的菜*//*
   @RequestMapping("selectCourse/{c_id}")
    public String selectCourse(@PathVariable("c_id") Integer c_id,Model model) {
        model.addAttribute("selectCourseName",courseService.selectCourse(c_id));
       return "selectCourse";
    }*/
   //*查询上传的菜*//*
   @RequestMapping("/selectCourse")
    public String selectCourse(Course course,HttpSession session,Model model) {
        model.addAttribute("selectCourseName",courseService.selectCourse(course));
       return "selectCource";
    }
   /* 查询最新美食*/
   @RequestMapping("/selectNewCate")
    public  String selectNewCate(Model model){
       model.addAttribute("selectNewCateName",courseService.selectNewCate());
       return "newCate";
   }
    /*查询精选菜谱分页后的菜*/
    @RequestMapping("/selectChoiceCourseAndPage")
    public String selectChoiceCourseAndPage(Condition condition, Model model) {
        model.addAttribute("selectChoiceCourseAndPageName",courseService.selectChoiceCourseAndPage(condition));
        return "choiceCourse";
    }
    /*模糊搜索查询以及美食推荐（查询点赞最多的菜）*/
    @RequestMapping("/fuzzySearch")
        public String fuzzySearch(Condition condition,HttpSession session,Model model){
        /*精选菜和美食推荐雷同*/
        List<Course>  recommendCourse= courseService.selectIndexchoiceCourse();
        session.setAttribute("selectRecommendCourseName",recommendCourse);
        /*将文本框输入的数据放入session中*/
        session.setAttribute("fuzzySearchCourse",condition);
        model.addAttribute("fuzzySearchName",courseService.fuzzySearch(condition));
        return "fuzzySearch";
    }

}