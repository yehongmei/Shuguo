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
        int pageNumber=condition.getPageNumber();
        condition.setCuPageNumber((pageNumber-1)*14);
        List<Course> courses=courseMapper.selectAllCourse(condition);

        int count=courseMapper.selectPageCount(condition);
         /*向上取整*/
        double page= Math.ceil(count/14.0);
        /*实型转化成整型*/
        int allPage=(int)page;
        CoursePaging coursePaging=new CoursePaging();
        coursePaging.setCourses(courses);
        coursePaging.setPageNumber(allPage);
        coursePaging.setCurrentPage(condition.getPageNumber());

        return coursePaging;
    }

}
