package entities;

import java.util.List;

/*通过类型,精选查询分页后的菜*/
public class CoursePaging{
    /*所有菜*/
    private  List<Course> courses;
    /*总页数*/
    private int totalPageNumber;
    /*分页后当前第几页*/
    private int currentPage;
    public List<Course> getCourses() {
        return courses;
    }
    public void setCourses(List<Course> courses) {
        this.courses = courses;
    }

    public int getTotalPageNumber() {
        return totalPageNumber;
    }

    public void setTotalPageNumber(int totalPageNumber) {
        this.totalPageNumber = totalPageNumber;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }
}
