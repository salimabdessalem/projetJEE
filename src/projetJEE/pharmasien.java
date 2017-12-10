package projetJEE;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Time;
import java.util.ArrayList;
public class pharmasien {
mydb bd=new mydb();
private Time open;
private Time close;
private String password;
private String username;
private int tel ;
private String address;
private String name;
private int  id_pharma;
public pharmasien()
{}
public pharmasien(String username)
{
	this.username=username;
	Connection con=bd.getCon();
	try {
	PreparedStatement ps = con.prepareStatement("select * from pharmasien where username=?");
	ps.setString(1,username);
	ResultSet rs = ps.executeQuery();
	while(rs.next())
	{
		open=rs.getTime("horaire_overture");
		close=rs.getTime("horaire_fermeture");
		password=rs.getString("password");
		tel=rs.getInt("tel");
		address=rs.getString("address");
		name=rs.getString("name");
		id_pharma=rs.getInt("id_pharma");
	}
}
	catch(SQLException e)
	{
		
	}
}
public Time getOpen() {
	return open;
}
public void setOpen(Time open) {
	Connection con=bd.getCon();
	try {
	PreparedStatement stmt = con.prepareStatement("update pharmasien set horaire_overture=? where id_pharma=?");
	stmt.setTime(1,open);
	stmt.setInt(2,this.id_pharma);
	stmt.executeUpdate();
	}
	catch(SQLException e)
	{
		
	}
}
public Time getClose() {
	return close;
}
public void setClose(Time close) {
	Connection con=bd.getCon();
	try {
	PreparedStatement stmt = con.prepareStatement("update pharmasien set horaire_fermeture=? where id_pharma=?");
	stmt.setTime(1,close);
	stmt.setInt(2,this.id_pharma);
	stmt.executeUpdate();
	}
	catch(SQLException e)
	{
		
	}
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	Connection con=bd.getCon();
	try {
	PreparedStatement stmt = con.prepareStatement("update pharmasien set password=? where id_pharma=?");
	stmt.setString(1,password);
	stmt.setInt(2,this.id_pharma);
	stmt.executeUpdate();
	}
	catch(SQLException e)
	{
		
	}
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	Connection con=bd.getCon();
	try {
	PreparedStatement stmt = con.prepareStatement("update pharmasien set username=? where id_pharma=?");
	stmt.setString(1,username);
	stmt.setInt(2,this.id_pharma);
	stmt.executeUpdate();
	}
	catch(SQLException e)
	{
		
	}
}
public int getTel() {
	return tel;
}
public void setTel(int tel) {
	Connection con=bd.getCon();
	try {
	PreparedStatement stmt = con.prepareStatement("update pharmasien set tel=? where id_pharma=?");
	stmt.setInt(1,tel);
	stmt.setInt(2,this.id_pharma);
	stmt.executeUpdate();
	}
	catch(SQLException e)
	{
		
	}
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	Connection con=bd.getCon();
	try {
	PreparedStatement stmt = con.prepareStatement("update pharmasien set address=? here id_pharma=?");
	stmt.setString(1,address);
	stmt.setInt(2,this.id_pharma);
	stmt.executeUpdate();
	}
	catch(SQLException e)
	{
		
	}
}
public String getName() {
	return name;
}
public void setName(String name) {
	Connection con=bd.getCon();
	try {
	PreparedStatement stmt = con.prepareStatement("update pharmasien set name=? here id_pharma=?");
	stmt.setString(1,name);
	stmt.setInt(2,this.id_pharma);
	stmt.executeUpdate();
	}
	catch(SQLException e)
	{
		
	}
}
public int getId_pharma() {
	return id_pharma;
}
public void create_pharma(Time open,Time close,String password,String username,int tel,String address,String name)
{
	Connection con=bd.getCon();
	try {
	PreparedStatement stmt = con.prepareStatement("insert into pharmasien(horaire_overture,horaire_fermeture,password,username,tel,address,name) values(?,?,?,?,?,?,?)");
	stmt.setTime(1,open);
	stmt.setTime(2,close);
	stmt.setString(3,password);
	stmt.setString(4,username);
	stmt.setInt(5,tel);
	stmt.setString(6,address);
	stmt.setString(7,name);
	stmt.executeUpdate();
	}
	catch(SQLException e)
	{
		
	}	
}

}
