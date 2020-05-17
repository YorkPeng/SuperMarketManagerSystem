package pojo;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * sale
 * @author 
 */
public class Sale implements Serializable {
    private Integer saleid;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date saletime;

    private Integer saleempid;

    private Integer saleitemid;

    private Integer saleamount;

    private Integer salecustomerid;

    private Integer saleprice;

    private static final long serialVersionUID = 1L;

    public Integer getSaleid() {
        return saleid;
    }

    public void setSaleid(Integer saleid) {
        this.saleid = saleid;
    }

    public Date getSaletime() {
        return saletime;
    }

    public void setSaletime(Date saletime) {
        this.saletime = saletime;
    }

    public Integer getSaleempid() {
        return saleempid;
    }

    public void setSaleempid(Integer saleempid) {
        this.saleempid = saleempid;
    }

    public Integer getSaleitemid() {
        return saleitemid;
    }

    public void setSaleitemid(Integer saleitemid) {
        this.saleitemid = saleitemid;
    }

    public Integer getSaleamount() {
        return saleamount;
    }

    public void setSaleamount(Integer saleamount) {
        this.saleamount = saleamount;
    }

    public Integer getSalecustomerid() {
        return salecustomerid;
    }

    public void setSalecustomerid(Integer salecustomerid) {
        this.salecustomerid = salecustomerid;
    }

    public Integer getSaleprice() {
        return saleprice;
    }

    public void setSaleprice(Integer saleprice) {
        this.saleprice = saleprice;
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
        Sale other = (Sale) that;
        return (this.getSaleid() == null ? other.getSaleid() == null : this.getSaleid().equals(other.getSaleid()))
            && (this.getSaletime() == null ? other.getSaletime() == null : this.getSaletime().equals(other.getSaletime()))
            && (this.getSaleempid() == null ? other.getSaleempid() == null : this.getSaleempid().equals(other.getSaleempid()))
            && (this.getSaleitemid() == null ? other.getSaleitemid() == null : this.getSaleitemid().equals(other.getSaleitemid()))
            && (this.getSaleamount() == null ? other.getSaleamount() == null : this.getSaleamount().equals(other.getSaleamount()))
            && (this.getSalecustomerid() == null ? other.getSalecustomerid() == null : this.getSalecustomerid().equals(other.getSalecustomerid()))
            && (this.getSaleprice() == null ? other.getSaleprice() == null : this.getSaleprice().equals(other.getSaleprice()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getSaleid() == null) ? 0 : getSaleid().hashCode());
        result = prime * result + ((getSaletime() == null) ? 0 : getSaletime().hashCode());
        result = prime * result + ((getSaleempid() == null) ? 0 : getSaleempid().hashCode());
        result = prime * result + ((getSaleitemid() == null) ? 0 : getSaleitemid().hashCode());
        result = prime * result + ((getSaleamount() == null) ? 0 : getSaleamount().hashCode());
        result = prime * result + ((getSalecustomerid() == null) ? 0 : getSalecustomerid().hashCode());
        result = prime * result + ((getSaleprice() == null) ? 0 : getSaleprice().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", saleid=").append(saleid);
        sb.append(", saletime=").append(saletime);
        sb.append(", saleempid=").append(saleempid);
        sb.append(", saleitemid=").append(saleitemid);
        sb.append(", saleamount=").append(saleamount);
        sb.append(", salecustomerid=").append(salecustomerid);
        sb.append(", saleprice=").append(saleprice);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}