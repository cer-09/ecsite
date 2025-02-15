package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;
import com.internousdev.ecsite.util.DateUtil;

public class BuyItemCompleteDAO{

	DBConnector dbConnector=new DBConnector();
	Connection connection=dbConnector.getConnection();
	DateUtil dateUtil=new DateUtil();

	public int buyItemInfo(String item_transaction_id, String user_master_id, String total_price, String total_count, String pay) throws SQLException{
		String sql="INSERT INTO user_buy_item_transaction(item_transaction_id, total_price, total_count, user_master_id, pay, insert_date) VALUES(?, ?, ?, ?, ?, ?)";

		int result=0;

		try{
			PreparedStatement ps=connection.prepareStatement(sql);
			ps.setString(1, item_transaction_id);
			ps.setString(2, total_price);
			ps.setString(3, total_count);
			ps.setString(4, user_master_id);
			ps.setString(5, pay);
			ps.setString(6, dateUtil.getDate());

			result=ps.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			connection.close();
		}

		return result;
	}

	public void updateItemStock(int count, String id) throws SQLException{
		String sql="UPDATE item_info_transaction SET item_stock=item_stock-? WHERE id=?";

		try{
			PreparedStatement ps=connection.prepareStatement(sql);
			ps.setInt(1, count);
			ps.setString(2, id);
			ps.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			connection.close();
		}
	}

}
