package service;
import entities.Course;
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
    public List<Course> selectAllCourse (Course course){return courseMapper.selectAllCourse(course);}
}
