package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;

public class ItemListDeleteCompleteDAO {

	private DBConnector dbConnector=new DBConnector();
	private Connection con=dbConnector.getConnection();

	public int deleteItemList() throws SQLException{
		String sql="DELETE FROM item_info_transaction";
		PreparedStatement ps;
		int result=0;

		try{
			ps=con.prepareStatement(sql);
			result=ps.executeUpdate();
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			con.close();
		}

		return result;
	}

}
