package mapper;

import entities.Course;

public interface CourseMapper {
   public int insertCourse(Course course);
/*   public  Course selectCourse(Integer c_id);*/
   public  int updateCoursePraise(Integer c_id);
}
