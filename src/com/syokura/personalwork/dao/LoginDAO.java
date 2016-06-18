package com.syokura.personalwork.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.syokura.personalwork.util.DBConnector;

public class LoginDAO {
	public String admin_name;

	public String select(String user, String password) {

		Connection con = new DBConnector().getConnection();
		String ret = "error";
		try {
			String sql = "SELECT * FROM admin_table WHERE";
			sql += " admin_id = ? AND admin_pass = ?";
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ps.setString(1, user);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				ret = "success";
				admin_name = rs.getString("admin_name");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return ret;
	}

}
