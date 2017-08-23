package service;
import entities.Condition;
import entities.Course;
import entities.CoursePaging;
import mapper.CourseMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CourseService {
    @Autowired
    private CourseMapper courseMapper;
    public  boolean insertCourse(Course course){
        return courseMapper.insertCourse(course)>0;
    }
    public  Course selectCourse(Course course){
        return courseMapper.selectCourse(course);
    }
    public  boolean updateCoursePraise(Integer c_id){
        return courseMapper.updateCoursePraise(c_id)>0;
    }
    public CoursePaging selectAllCourseAndPage (Condition condition){
        /*查询第几页*/
        int pageNumber=condition.getSelectPageNumber();
        /*计算后的页数*/
        condition.setCalculationPageNumber((pageNumber-1)*16);
        /*根据条件查询菜*/
        List<Course> courses=courseMapper.selectAllCourse(condition);
        /*根据菜的类型查询菜的条数*/
        int count=courseMapper.selectPageCount(condition);
         /*计算页数向上取整*/
        double page= Math.ceil(count/16.0);
        /*实型转化成整型*/
        int allPage=(int)page;
        /*创建一个CoursePaging对象*/
        CoursePaging coursePaging=new CoursePaging();
        coursePaging.setCourses(courses);
        coursePaging.setTotalPageNumber(allPage);
        /*查询第几页设置为当前页*/
        coursePaging.setCurrentPage(condition.getSelectPageNumber());

        return coursePaging;
    }
    public  List<Course> selectNewCate(){
        /*查询所有新菜谱*/
        List<Course> courses= courseMapper.selectNewCate();
        /*Course是类型，course是变量名，courses是所有新菜谱*/
        for (Course course:courses){
            /*将日期获取出来*/
            String date = course.getC_date();
            /*截取值*/
            date = date.substring(0,10);
            /*将截取的值添加到日期*/
            course.setC_date(date);
        }
        return  courses;
    }
    /*查询index页面的最新菜谱*/
    public  List<Course> selectIndexNewCate(){
        return courseMapper.selectIndexNewCate();
    }
    /*查询index页面的精选菜谱*/
    public  List<Course> selectIndexchoiceCourse(){
        return courseMapper.selectIndexchoiceCourse();
    }

    public CoursePaging  selectChoiceCourseAndPage(Condition condition){
        int pageNumber=condition.getSelectPageNumber();
        condition.setCalculationPageNumber((pageNumber-1)*32);
        /*查询菜的条数*/
        int count=courseMapper.selectChoicePageCount();
         /*计算页数向上取整*/
        double page= Math.ceil(count/32.0);
        /*实型转化成整型*/
        int allPage=(int)page;
           /*查询菜*/
        List<Course> courses=courseMapper.selectChoiceCourse(condition);
        /*创建一个CoursePaging对象*/
        CoursePaging coursePaging=new CoursePaging();
        coursePaging.setCourses(courses);
        coursePaging.setTotalPageNumber(allPage);
        /*查询第几页设置为当前页*/
        coursePaging.setCurrentPage(condition.getSelectPageNumber());
        return coursePaging;
    }
        /*主界面模糊搜索*/
    public List<Course> fuzzySearch(Course course){

        return courseMapper.fuzzySearch(course);
    }


}
