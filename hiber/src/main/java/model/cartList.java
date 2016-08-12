package model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;


@Table(name="CARTLISTS")
@Entity
public class cartList {
	
	@Id
	public int pid;
	public String pname;
	public int pprice;
	public String pcategory;
	public int ptotal;
	
	public int quantity;
	
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getPprice() {
		return pprice;
	}
	public void setPprice(int pprice) {
		this.pprice = pprice;
	}
	public String getPcategory() {
		return pcategory;
	}
	public void setPcategory(String pcategory) {
		this.pcategory = pcategory;
	}
	
	public void setPtotal(int ptotal) {
		this.ptotal = ptotal;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
    public int getPtotal() {
		
		ptotal = quantity*pprice;
		return ptotal;
	}
	@Override
	public String toString() {
		return "cartList [pid=" + pid + ", pname=" + pname + ", pprice=" + pprice + ", pcategory=" + pcategory
				+ ", ptotal=" + ptotal + ", quantity=" + quantity + "]";
	}


}
