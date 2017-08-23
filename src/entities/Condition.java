package entities;
/*查询的条件*/
public class Condition {
    /*菜的名称*/
    private String c_name;
    /*菜的类型*/
    private String c_type;
    /*计算后的页数*/
    private int calculationPageNumber;
    /*查询第几页*/
    private int selectPageNumber;

    public String getC_name() {
        return c_name;
    }

    public void setC_name(String c_name) {
        this.c_name = c_name;
    }

    public String getC_type() {
        return c_type;
    }

    public void setC_type(String c_type) {
        this.c_type = c_type;
    }

    public int getSelectPageNumber() {
        return selectPageNumber;
    }

    public void setSelectPageNumber(int selectPageNumber) {
        this.selectPageNumber = selectPageNumber;
    }

    public int getCalculationPageNumber() {
        return calculationPageNumber;
    }

    public void setCalculationPageNumber(int calculationPageNumber) {
        this.calculationPageNumber = calculationPageNumber;
    }
}
