package mapper;

import entities.Condition;
import entities.Course;

import java.util.List;

public interface CourseMapper {
   int insertCourse(Course course);
   Course selectCourse(Course course);
   int updateCoursePraise(Integer c_id);
   List<Course> selectAllCourse(Condition condition);
   int selectPageCount(Condition condition);
   List<Course> selectNewCate();
   List<Course> selectIndexNewCate();
   List<Course> selectIndexchoiceCourse();
   List<Course> selectChoiceCourse(Condition condition);
   int selectChoicePageCount();
   List<Course> fuzzySearch(Course course);
   int fuzzySearchCount();
}
