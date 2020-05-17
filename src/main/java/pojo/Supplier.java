package pojo;

import java.io.Serializable;

/**
 * supplier
 * @author 
 */
public class Supplier implements Serializable {
    private Integer supplierid;

    private String suppliername;

    private String supplieraddress;

    private String suppliertelephone;

    private static final long serialVersionUID = 1L;

    public Integer getSupplierid() {
        return supplierid;
    }

    public void setSupplierid(Integer supplierid) {
        this.supplierid = supplierid;
    }

    public String getSuppliername() {
        return suppliername;
    }

    public void setSuppliername(String suppliername) {
        this.suppliername = suppliername;
    }

    public String getSupplieraddress() {
        return supplieraddress;
    }

    public void setSupplieraddress(String supplieraddress) {
        this.supplieraddress = supplieraddress;
    }

    public String getSuppliertelephone() {
        return suppliertelephone;
    }

    public void setSuppliertelephone(String suppliertelephone) {
        this.suppliertelephone = suppliertelephone;
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
        Supplier other = (Supplier) that;
        return (this.getSupplierid() == null ? other.getSupplierid() == null : this.getSupplierid().equals(other.getSupplierid()))
            && (this.getSuppliername() == null ? other.getSuppliername() == null : this.getSuppliername().equals(other.getSuppliername()))
            && (this.getSupplieraddress() == null ? other.getSupplieraddress() == null : this.getSupplieraddress().equals(other.getSupplieraddress()))
            && (this.getSuppliertelephone() == null ? other.getSuppliertelephone() == null : this.getSuppliertelephone().equals(other.getSuppliertelephone()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getSupplierid() == null) ? 0 : getSupplierid().hashCode());
        result = prime * result + ((getSuppliername() == null) ? 0 : getSuppliername().hashCode());
        result = prime * result + ((getSupplieraddress() == null) ? 0 : getSupplieraddress().hashCode());
        result = prime * result + ((getSuppliertelephone() == null) ? 0 : getSuppliertelephone().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", supplierid=").append(supplierid);
        sb.append(", suppliername=").append(suppliername);
        sb.append(", supplieraddress=").append(supplieraddress);
        sb.append(", suppliertelephone=").append(suppliertelephone);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}