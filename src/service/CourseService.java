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
    public  boolean insertCourse(Course course){return courseMapper.insertCourse(course)>0;}
    /*public  Course selectCourse(Integer c_id){ return courseMapper.selectCourse(c_id); }*/
    public  boolean updateCoursePraise(Integer c_id){return courseMapper.updateCoursePraise(c_id)>0;}

    public CoursePaging selectAllCourseAndPage (Condition condition){
        /*查询第几页*/
        int pageNumber=condition.getSelectPageNumber();
        /*计算后的页数*/
        condition.setCalculationPageNumber((pageNumber-1)*14);
        /*根据条件查询菜*/
        List<Course> courses=courseMapper.selectAllCourse(condition);
        /*根据菜的类型查询菜的条数*/
        int count=courseMapper.selectPageCount(condition);
         /*计算页数向上取整*/
        double page= Math.ceil(count/14.0);
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

}
