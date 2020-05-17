package pojo;

import java.io.Serializable;

/**
 * item
 * @author 
 */
public class Item implements Serializable {
    private Integer itemid;

    private String itemname;

    private Integer itemprice;

    private Integer itemamount;

    private String itemman;

    private Integer itemsupplierid;

    private Integer itemhouseid;

    private static final long serialVersionUID = 1L;

    public Integer getItemid() {
        return itemid;
    }

    public void setItemid(Integer itemid) {
        this.itemid = itemid;
    }

    public String getItemname() {
        return itemname;
    }

    public void setItemname(String itemname) {
        this.itemname = itemname;
    }

    public Integer getItemprice() {
        return itemprice;
    }

    public void setItemprice(Integer itemprice) {
        this.itemprice = itemprice;
    }

    public Integer getItemamount() {
        return itemamount;
    }

    public void setItemamount(Integer itemamount) {
        this.itemamount = itemamount;
    }

    public String getItemman() {
        return itemman;
    }

    public void setItemman(String itemman) {
        this.itemman = itemman;
    }

    public Integer getItemsupplierid() {
        return itemsupplierid;
    }

    public void setItemsupplierid(Integer itemsupplierid) {
        this.itemsupplierid = itemsupplierid;
    }

    public Integer getItemhouseid() {
        return itemhouseid;
    }

    public void setItemhouseid(Integer itemhouseid) {
        this.itemhouseid = itemhouseid;
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
        Item other = (Item) that;
        return (this.getItemid() == null ? other.getItemid() == null : this.getItemid().equals(other.getItemid()))
            && (this.getItemname() == null ? other.getItemname() == null : this.getItemname().equals(other.getItemname()))
            && (this.getItemprice() == null ? other.getItemprice() == null : this.getItemprice().equals(other.getItemprice()))
            && (this.getItemamount() == null ? other.getItemamount() == null : this.getItemamount().equals(other.getItemamount()))
            && (this.getItemman() == null ? other.getItemman() == null : this.getItemman().equals(other.getItemman()))
            && (this.getItemsupplierid() == null ? other.getItemsupplierid() == null : this.getItemsupplierid().equals(other.getItemsupplierid()))
            && (this.getItemhouseid() == null ? other.getItemhouseid() == null : this.getItemhouseid().equals(other.getItemhouseid()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getItemid() == null) ? 0 : getItemid().hashCode());
        result = prime * result + ((getItemname() == null) ? 0 : getItemname().hashCode());
        result = prime * result + ((getItemprice() == null) ? 0 : getItemprice().hashCode());
        result = prime * result + ((getItemamount() == null) ? 0 : getItemamount().hashCode());
        result = prime * result + ((getItemman() == null) ? 0 : getItemman().hashCode());
        result = prime * result + ((getItemsupplierid() == null) ? 0 : getItemsupplierid().hashCode());
        result = prime * result + ((getItemhouseid() == null) ? 0 : getItemhouseid().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", itemid=").append(itemid);
        sb.append(", itemname=").append(itemname);
        sb.append(", itemprice=").append(itemprice);
        sb.append(", itemamount=").append(itemamount);
        sb.append(", itemman=").append(itemman);
        sb.append(", itemsupplierid=").append(itemsupplierid);
        sb.append(", itemhouseid=").append(itemhouseid);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}