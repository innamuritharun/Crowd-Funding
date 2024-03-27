package com.crowd.Implementation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.crowd.Bean.BankAccountBean;
import com.crowd.Bean.EventBean;
import com.crowd.Bean.RegisterBean;
import com.crowd.Bean.UploadBean;
import com.crowd.Database.DatabaseConnection;
import com.crowd.Interface.CrowdInterface;

public class CrowdImplementation implements CrowdInterface  {

Connection con;
	
	@Override
	public int register(RegisterBean rb) {
		int result = 0;
		try{
			con = DatabaseConnection.createConnection();
			PreparedStatement ps = con.prepareStatement("insert into register values(?,?,?,?,?)");
			ps.setString(1, rb.getName());
			ps.setString(2, rb.getUsername());
			ps.setString(3, rb.getPassword());
			ps.setString(4, rb.getEmail());
			ps.setString(5, rb.getAddress());
			result = ps.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int login(String username, String password) {
		int result = 0;
		try{
			con = DatabaseConnection.createConnection();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from register where username='"+username+"'and password='"+password+"'");
			while(rs.next()){
				String usernamech = rs.getString("username");
				String passwordch = rs.getString("password");
				if(usernamech.equals(username)&&passwordch.equals(password)){
					result = 1;
				}
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return result;							
	}
	
	@Override
	public int investorregister(RegisterBean rb) {
		int result = 0;
		try{
			con = DatabaseConnection.createConnection();
			PreparedStatement ps = con.prepareStatement("INSERT INTO investorregister VALUES (?,?,?,?,?)");
			ps.setString(1, rb.getName());
			ps.setString(2, rb.getUsername());
			ps.setString(3, rb.getPassword());
			ps.setString(4, rb.getEmail());
			ps.setString(5, rb.getAddress());
			result = ps.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int investorlogin(String username, String password) {
		int result = 0;
		try{
			con = DatabaseConnection.createConnection();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from investorregister where username='"+username+"' and password='"+password+"'");
			while(rs.next()){
				String usernamech = rs.getString("username");
				String passwordch = rs.getString("password");
				if(usernamech.equals(username)&&passwordch.equals(password)){
					result = 1;
				}
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return result;
	} 
	
	@Override
	public int bankaccount(BankAccountBean ab) {
		int result = 0;
		con = DatabaseConnection.createConnection();
		try{
			PreparedStatement ps = con.prepareStatement("INSERT INTO bankaccount VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, ab.getName());
			ps.setString(2, ab.getUsername());
			ps.setString(3, ab.getPasswrord());
			ps.setString(4, ab.getEmail());
			ps.setString(5, ab.getNumber());
			ps.setString(6, ab.getAddress());
			ps.setString(7, ab.getState());
			ps.setString(8, ab.getCountry());
			ps.setString(9, ab.getPincode());
			ps.setString(10, ab.getAge());
			ps.setString(11, ab.getGender());
			ps.setString(12, ab.getBankname());
			ps.setString(13, ab.getAmount());
			ps.setString(14, ab.getAccountnumber());
			result = ps.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public int banklogin(String email, String password) {
		int result = 0;
		try{
			con = DatabaseConnection.createConnection();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from bankaccount where email='"+email+"'and password='"+password+"'");
			while(rs.next()){
				String emailch = rs.getString("email");
				String passwordch = rs.getString("password");
				if(emailch.equals(email)&&passwordch.equals(password)){
					result = 1;
				}
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}
	
	@Override
	public int eventregister(EventBean ob) {
		int result = 0;
		con = DatabaseConnection.createConnection();
		try{
			PreparedStatement ps = con.prepareStatement("INSERT INTO fairpayment.eventregisters VALUES(?,?,?,?,?,?)");
			ps.setString(1, ob.getUsername());
			ps.setString(2, ob.getProductname());
			ps.setString(3, ob.getProductprice());
			ps.setString(4, ob.getCategory());
			ps.setString(5, ob.getDescription());
			ps.setString(6, ob.getFilename());
			result = ps.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}
	
	@Override
	public int fileupload(UploadBean bean) {
		int ans=0;
		try {
			con = DatabaseConnection.createConnection();
			PreparedStatement ptmt = con.prepareStatement("INSERT INTO uploadfile VALUES(?,?,?,?,?,?,?,?,?)");
			ptmt.setString(1, bean.getUsername());
			ptmt.setString(2, bean.getFilename());
			ptmt.setString(3, bean.getType());
			ptmt.setString(4, bean.getPath());
			ptmt.setString(5, bean.getContent());
			ptmt.setString(6, bean.getSize());
			ptmt.setString(7, bean.getKey());
			ptmt.setString(8, bean.getEncrypt());
			ptmt.setString(9, bean.getDecrypt());
			
			ans=ptmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return ans;
	}

	@Override
	public String getpublickey(String filename) {
		int i = 0;
		String publickey = null;
		try {
			con = DatabaseConnection.createConnection();
			PreparedStatement ptmt = con.prepareStatement("SELECT filekey FROM uploadfile where filename = '"+filename+"'");
			ResultSet rs = ptmt.executeQuery();
			
			while(rs.next()) {
				publickey = rs.getString(1);
				System.out.println("The public key is :" +publickey);
			}
			System.out.println("xc"+i);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return publickey;
	}
}
