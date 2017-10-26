package entities;
/*点赞类*/
public class Praise {
    private  int pid;

    public void setU_id(int u_id) {
        this.u_id = u_id;
    }

    private  int  u_id;
    private  int  c_id;
    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public int getU_id() {
        return u_id;
    }

    public int getC_id() {
        return c_id;
    }

    public void setC_id(int c_id) {
        this.c_id = c_id;
    }
}
