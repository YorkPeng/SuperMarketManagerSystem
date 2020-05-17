package pojo;

import java.io.Serializable;

/**
 * employee
 * @author 
 */
public class Employee implements Serializable {
    private Integer empid;

    private String empname;

    private String empgender;

    private Integer empage;

    private Integer empsalary;

    private Integer emptype;

    private String emptelephone;

    private String emppassword;

    private static final long serialVersionUID = 1L;

    public Integer getEmpid() {
        return empid;
    }

    public void setEmpid(Integer empid) {
        this.empid = empid;
    }

    public String getEmppassword() {
        return emppassword;
    }

    public void setEmppassword(String empPassword) {
        this.emppassword = empPassword;
    }

    public String getEmpname() {
        return empname;
    }

    public void setEmpname(String empname) {
        this.empname = empname;
    }

    public String getEmpgender() {
        return empgender;
    }

    public void setEmpgender(String empgender) {
        this.empgender = empgender;
    }

    public Integer getEmpage() {
        return empage;
    }

    public void setEmpage(Integer empage) {
        this.empage = empage;
    }

    public Integer getEmpsalary() {
        return empsalary;
    }

    public void setEmpsalary(Integer empsalary) {
        this.empsalary = empsalary;
    }

    public Integer getEmptype() {
        return emptype;
    }

    public void setEmptype(Integer emptype) {
        this.emptype = emptype;
    }

    public String getEmptelephone() {
        return emptelephone;
    }

    public void setEmptelephone(String emptelephone) {
        this.emptelephone = emptelephone;
    }

    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        Employee other = (Employee) that;
        return (this.getEmpid() == null ? other.getEmpid() == null : this.getEmpid().equals(other.getEmpid()))
            && (this.getEmpname() == null ? other.getEmpname() == null : this.getEmpname().equals(other.getEmpname()))
            && (this.getEmpgender() == null ? other.getEmpgender() == null : this.getEmpgender().equals(other.getEmpgender()))
            && (this.getEmpage() == null ? other.getEmpage() == null : this.getEmpage().equals(other.getEmpage()))
            && (this.getEmpsalary() == null ? other.getEmpsalary() == null : this.getEmpsalary().equals(other.getEmpsalary()))
            && (this.getEmptype() == null ? other.getEmptype() == null : this.getEmptype().equals(other.getEmptype()))
            && (this.getEmptelephone() == null ? other.getEmptelephone() == null : this.getEmptelephone().equals(other.getEmptelephone()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getEmpid() == null) ? 0 : getEmpid().hashCode());
        result = prime * result + ((getEmpname() == null) ? 0 : getEmpname().hashCode());
        result = prime * result + ((getEmpgender() == null) ? 0 : getEmpgender().hashCode());
        result = prime * result + ((getEmpage() == null) ? 0 : getEmpage().hashCode());
        result = prime * result + ((getEmpsalary() == null) ? 0 : getEmpsalary().hashCode());
        result = prime * result + ((getEmptype() == null) ? 0 : getEmptype().hashCode());
        result = prime * result + ((getEmptelephone() == null) ? 0 : getEmptelephone().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", empid=").append(empid);
        sb.append(", empname=").append(empname);
        sb.append(", empgender=").append(empgender);
        sb.append(", empage=").append(empage);
        sb.append(", empsalary=").append(empsalary);
        sb.append(", emptype=").append(emptype);
        sb.append(", emptelephone=").append(emptelephone);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }

    public Employee(Integer empid, String empname, String empgender, Integer empage, Integer empsalary, Integer emptype, String emptelephone) {
        this.empid = empid;
        this.empname = empname;
        this.empgender = empgender;
        this.empage = empage;
        this.empsalary = empsalary;
        this.emptype = emptype;
        this.emptelephone = emptelephone;
    }
}