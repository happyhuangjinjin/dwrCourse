package com.dwr;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DataBaseService {

	public Connection getConnection() {
		Connection conn = null;
		// 数据库地址，端口，数据库名称，字符集
		String url = "jdbc:mysql://localhost/svg?useUnicode=true&characterEncoding=GBK";
		// 数据库用户名
		String username = "root";
		// 数据库密码
		String password = "root";
		try {
			// 加载驱动，必须导入包mysql-connector-java-5.1.6-bin.jar
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, username, password);
			return conn;
		}
		// 捕获加载驱动程序异常
		catch (ClassNotFoundException cnfex) {
			System.err.println("装载 JDBC/ODBC 驱动程序失败。");
			cnfex.printStackTrace();
		}
		// 捕获连接数据库异常
		catch (SQLException sqlex) {
			System.err.println("无法连接数据库");
			sqlex.printStackTrace();
		}
		return null;
	}

	// 关闭数据库
	public void closeConnection(Connection conn) {
		try {
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			System.out.println("关闭数据库异常：");
			e.printStackTrace();
		}
	}

	public void closeResultSet(ResultSet rs) {
		try {
			if (rs != null) {
				rs.close();
			}
		} catch (Exception e) {
			System.out.println("关闭数据库异常：");
			e.printStackTrace();
		}
	}

	public void closePreparedStatement(PreparedStatement statement) {
		try {
			if (statement != null) {
				statement.close();
			}
		} catch (Exception e) {
			System.out.println("关闭数据库异常：");
			e.printStackTrace();
		}
	}

	/**
	 * 执行插入sql语句
	 * 
	 * @param sql
	 * @return
	 */
	public boolean insert(User u) {
		Connection conn = getConnection();
		PreparedStatement statement = null;
		try {
			String sql = "insert into t_user values(" + u.getId() + ", '"
					+ u.getUsername() + "', '" + u.getPassword() + "');";
			statement = conn.prepareStatement(sql);
			statement.executeUpdate();
			closeConnection(conn);
			System.out.println("insert success");
			return true;
		} catch (SQLException e) {
			System.out.println("插入数据库时出错：");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println("插入时出错：");
			e.printStackTrace();
		}
		System.out.println("insert failture");
		closeConnection(conn);
		return false;
	}

	/**
	 * 执行删除sql语句
	 * 
	 * @param sql
	 * @return
	 */
	public boolean delete(int id) {
		Connection conn = getConnection();
		PreparedStatement statement = null;
		try {
			String sql = "delete from t_user where id = " + id;
			statement = conn.prepareStatement(sql);
			statement.executeUpdate();
			closeConnection(conn);
			System.out.println("delete success");
			return true;
		} catch (SQLException e) {
			System.out.println("删除数据库时出错：");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println("删除时出错：");
			e.printStackTrace();
		}
		System.out.println("delete failture");
		closeConnection(conn);
		return false;
	}

	/**
	 * 查找用户
	 * 
	 * @param id
	 * @return
	 */
	public User find(int id) {
		try {
			String sql = "select * from t_user where id=" + id;
			Connection conn = getConnection();
			PreparedStatement statement = conn.prepareStatement(sql);
			ResultSet rs = statement.executeQuery(sql);
			if (rs.next()) {
				User u = new User();
				u.setId(rs.getInt("id"));
				u.setUsername(rs.getString("userName"));
				u.setPassword(rs.getString("password"));
				System.out.println("find success");
				return u;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println("find failture");
		return null;
	}

}
