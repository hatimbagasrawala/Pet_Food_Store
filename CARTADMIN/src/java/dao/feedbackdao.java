package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import model.feedbackmodel;

public class feedbackdao {
	public static void delete(int fid)
	{
		try
		{
			Connection connection=abstractdb.getConnection();
			PreparedStatement preparedStatement=connection.prepareStatement("delete from `feedback` where `id`=?");
			preparedStatement.setInt(1,fid);
			preparedStatement.executeUpdate();
		}
		catch(Exception ex)
		{
			
		}
	}
public static ArrayList<feedbackmodel> search()
{
	try
	{
		Connection connection=abstractdb.getConnection();
		Statement statement=connection.createStatement();
		ResultSet resultSet=statement.executeQuery("select * from `feedback`");
		ArrayList<feedbackmodel> al=new ArrayList<>();
		while(resultSet.next())
		{
			feedbackmodel feedback=new feedbackmodel();
			feedback.setFid(resultSet.getInt(1));
			feedback.setUid(resultSet.getInt(2));
			feedback.setOid(resultSet.getInt(3));
			feedback.setFeedback(resultSet.getString(4));
			al.add(feedback);
		}
		return al;
	}catch(Exception ex)
	{
		
	}
	
	return null;
	
}
}
