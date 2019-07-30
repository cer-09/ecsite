package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.internousdev.ecsite.dto.UserInfoDTO;
import com.internousdev.ecsite.util.DBConnector;

public class UserDetailsDAO{

	private DBConnector dbConnector=new DBConnector();
	private Connection con=dbConnector.getConnection();

	public UserInfoDTO getUserInfo (String id) throws SQLException{
		UserInfoDTO dto=new UserInfoDTO();
		String sql="SELECT*FROM user_info_transaction WHERE id=?";

		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, id);
			ResultSet resultSet=ps.executeQuery();

			while(resultSet.next()) {
				dto.setId(resultSet.getString("id"));
				dto.setLoginId(resultSet.getString("login_id"));
				dto.setLoginPass(resultSet.getString("login_password"));
				dto.setUserName(resultSet.getString("user_name"));
				dto.setInsert_date(resultSet.getString("insert_date"));
				dto.setUpdate_date(resultSet.getString("update_date"));
			}

		} catch(Exception e){
			e.printStackTrace();
		} finally {
			con.close();
		}

		return dto;
	}

}
