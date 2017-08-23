package entities;

import java.util.List;

public class FuzzySearch {
    private List<Course> courses;
      /* 模糊查询的条数*/
    private  int fuzzySearchCount;
    /*分页后当前第几页*/
    private int currentPage;
    /*总页数*/
    private  int totalPageNumber;

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
    public List<Course> getCourses() {
        return courses;
    }

    public void setCourses(List<Course> courses) {
        this.courses = courses;
    }

    public int getFuzzySearchCount() {
        return fuzzySearchCount;
    }

    public void setFuzzySearchCount(int fuzzySearchCount) {
        this.fuzzySearchCount = fuzzySearchCount;
    }
}
