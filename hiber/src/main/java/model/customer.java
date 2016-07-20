package model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="CUSTOMER")
@Entity
public class customer {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public int cid;
	public String cname;
	public String email;
	public String address;
	public int mobilenumber;
	public String password;
	public String repassword;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getMobilenumber() {
		return mobilenumber;
	}
	public void setMobilenumber(int mobilenumber) {
		this.mobilenumber = mobilenumber;
	}
	public String getPassword1() {
		return password;
	}
	public void setPassword1(String password1) {
		this.password = password1;
	}
	public String getPassword2() {
		return repassword;
	}
	public void setPassword2(String password2) {
		this.repassword= password2;
	}


}
