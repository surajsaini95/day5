package model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;


@Entity
@Table(name="CUSTOMER")
public class customer {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public int cid;
	
	  @NotEmpty (message = "enter name")
	  public String cname;
	

	@Email
	public String email;
	
	 @NotEmpty (message = "enter address")
	 public String address;

	public int mobilenumber;
	
	/* @NotEmpty (message = "provide username.")
	 private String username;
	 
	 @NotEmpty (message = "enter password")
	    private String password;

	 public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}*/
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
	/*public String getPassword() {
		return password;
	}
	public void setPassword(String  password) {
		this.password = password;
	}
	
*/	
}
