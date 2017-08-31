package mapper;

import entities.Condition;
import entities.Course;
import entities.Praise;

import java.util.List;

public interface CourseMapper {
   int insertCourse(Course course);
   Course selectCourseAndComment(Course course);
   int updateCoursePraise(Integer c_id);
   Praise selectPraise( Praise  praise);
   int insertPraise(Praise  praise);
   List<Course> selectAllCourse(Condition condition);
   int selectPageCount(Condition condition);
   List<Course> selectNewCate();
   List<Course> selectIndexNewCate();
   List<Course> selectIndexchoiceCourse();
   List<Course> selectChoiceCourse(Condition condition);
   int selectChoicePageCount();
   List<Course> fuzzySearch(Condition condition);
   int fuzzySearchCount(Condition condition);
}
