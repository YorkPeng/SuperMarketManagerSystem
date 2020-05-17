package pojo;

import java.io.Serializable;

/**
 * house
 * @author 
 */
public class House implements Serializable {
    private Integer houseid;

    private String houseaddress;

    private String housetelephone;

    private String housename;

    private static final long serialVersionUID = 1L;

    public Integer getHouseid() {
        return houseid;
    }

    public void setHouseid(Integer houseid) {
        this.houseid = houseid;
    }

    public String getHouseaddress() {
        return houseaddress;
    }

    public void setHouseaddress(String houseaddress) {
        this.houseaddress = houseaddress;
    }

    public String getHousetelephone() {
        return housetelephone;
    }

    public void setHousetelephone(String housetelephone) {
        this.housetelephone = housetelephone;
    }

    public String getHousename() {
        return housename;
    }

    public void setHousename(String housename) {
        this.housename = housename;
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
        House other = (House) that;
        return (this.getHouseid() == null ? other.getHouseid() == null : this.getHouseid().equals(other.getHouseid()))
            && (this.getHouseaddress() == null ? other.getHouseaddress() == null : this.getHouseaddress().equals(other.getHouseaddress()))
            && (this.getHousetelephone() == null ? other.getHousetelephone() == null : this.getHousetelephone().equals(other.getHousetelephone()))
            && (this.getHousename() == null ? other.getHousename() == null : this.getHousename().equals(other.getHousename()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getHouseid() == null) ? 0 : getHouseid().hashCode());
        result = prime * result + ((getHouseaddress() == null) ? 0 : getHouseaddress().hashCode());
        result = prime * result + ((getHousetelephone() == null) ? 0 : getHousetelephone().hashCode());
        result = prime * result + ((getHousename() == null) ? 0 : getHousename().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", houseid=").append(houseid);
        sb.append(", houseaddress=").append(houseaddress);
        sb.append(", housetelephone=").append(housetelephone);
        sb.append(", housename=").append(housename);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}