package mapper;

import entities.Course;

import java.util.List;

public interface CourseMapper {
   int insertCourse(Course course);
/*   public  Course selectCourse(Integer c_id);*/
   int updateCoursePraise(Integer c_id);
   List<Course> selectAllCourse(Course course);
}
