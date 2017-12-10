package projetJEE;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class service {
mydb db=new mydb();
private String name[];
private String Description[];
private int id_pharma;
private int id_service[];
public service(int id_pharma)
{
	Connection con=db.getCon();
	try {
	PreparedStatement ps = con.prepareStatement("select * from service where id_pharma=?");
	ps.setInt(1,id_pharma);
	ResultSet rs = ps.executeQuery();
	int i=0;
	this.id_pharma=id_pharma;
	while(rs.next())
	{
	this.name[i]=rs.getString("name");
	this.Description[i]=rs.getString("description");
	this.id_service[i]=rs.getInt("id_service");
	i++;
	}
	}
	catch(SQLException e)
	{
		e.printStackTrace();
	}
}
public void create_service(String name,String description,int id_pharma)
{
	Connection con=db.getCon();
	try
	{
		PreparedStatement ps=con.prepareStatement("insert into service(name,description,id_pharma)value(?,?,?)");
		ps.setString(1,name);
		ps.setString(2,description);
		ps.setInt(3,id_pharma);
		ps.executeUpdate();
	}
	catch(SQLException e)
	{
		
	}
}
public String[] getName() {
	return name;
}
public void setName(String[] name) {
	this.name = name;
}
public String[] getDescription() {
	return Description;
}
public void setDescription(String[] description) {
	Description = description;
}
public int getId_pharma() {
	return id_pharma;
}
public void setId_pharma(int id_pharma) {
	this.id_pharma = id_pharma;
}
public int[] getId_service() {
	return id_service;
}
public void setId_service(int[] id_service) {
	this.id_service = id_service;
}
}
