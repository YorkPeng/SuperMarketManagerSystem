package pojo;

import java.io.Serializable;

/**
 * in
 * @author 
 */
public class In implements Serializable {
    private Integer inid;

    private Integer initemid;

    private Integer insupplierid;

    private Integer inamount;

    private Integer inprice;

    private static final long serialVersionUID = 1L;

    public Integer getInid() {
        return inid;
    }

    public void setInid(Integer inid) {
        this.inid = inid;
    }

    public Integer getInitemid() {
        return initemid;
    }

    public void setInitemid(Integer initemid) {
        this.initemid = initemid;
    }

    public Integer getInsupplierid() {
        return insupplierid;
    }

    public void setInsupplierid(Integer insupplierid) {
        this.insupplierid = insupplierid;
    }

    public Integer getInamount() {
        return inamount;
    }

    public void setInamount(Integer inamount) {
        this.inamount = inamount;
    }

    public Integer getInprice() {
        return inprice;
    }

    public void setInprice(Integer inprice) {
        this.inprice = inprice;
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
        In other = (In) that;
        return (this.getInid() == null ? other.getInid() == null : this.getInid().equals(other.getInid()))
            && (this.getInitemid() == null ? other.getInitemid() == null : this.getInitemid().equals(other.getInitemid()))
            && (this.getInsupplierid() == null ? other.getInsupplierid() == null : this.getInsupplierid().equals(other.getInsupplierid()))
            && (this.getInamount() == null ? other.getInamount() == null : this.getInamount().equals(other.getInamount()))
            && (this.getInprice() == null ? other.getInprice() == null : this.getInprice().equals(other.getInprice()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getInid() == null) ? 0 : getInid().hashCode());
        result = prime * result + ((getInitemid() == null) ? 0 : getInitemid().hashCode());
        result = prime * result + ((getInsupplierid() == null) ? 0 : getInsupplierid().hashCode());
        result = prime * result + ((getInamount() == null) ? 0 : getInamount().hashCode());
        result = prime * result + ((getInprice() == null) ? 0 : getInprice().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", inid=").append(inid);
        sb.append(", initemid=").append(initemid);
        sb.append(", insupplierid=").append(insupplierid);
        sb.append(", inamount=").append(inamount);
        sb.append(", inprice=").append(inprice);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}