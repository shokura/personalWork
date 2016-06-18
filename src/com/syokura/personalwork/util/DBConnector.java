/**
 *
 */
package com.syokura.personalwork.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * @author kurachi
 *
 */
public class DBConnector {
	public Connection getConnection() {
		String driverName = "com.mysql.jdbc.Driver"; // versionが変わらない限り同じ。決まり文句
		String url = "jdbc:mysql://localhost/openconnect";
		String user = "root"; // MySQLのuserってrootでしたよね？それです。
		String password = "mysql";// MySQLに接続するパスワードです。
		Connection con = null;// Connectionを初期化してあげる。
		try {
			//ドライバーの名前を入力
			Class.forName(driverName);
			con = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}

}
