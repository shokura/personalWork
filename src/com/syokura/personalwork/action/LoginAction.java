/**
 *
 */
package com.syokura.personalwork.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.syokura.personalwork.dao.LoginDAO;

/**
 * @author zeru
 *
 */
public class LoginAction extends ActionSupport implements SessionAware {

	/**
	 *
	 */
	private static final long serialVersionUID = -2600334628505331795L;

	private String id;
	private String password;
	private Map<String, Object> session;

	public String execute() throws SQLException {
		LoginDAO dao = new LoginDAO();
		String ret = dao.select(id, password);
		session.put("name_key", dao.admin_name);
		return ret;
	}

	/**
	 * idを取得するメソッド
	 * @return id
	 */
	public String getId() {
		return id;
	}

	/**
	 * @param idをセットするメソッド
	 * @param id
	 */
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * passwordを取得するメソッド
	 * @return password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param passwordをセットするメソッド
	 * @param password
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * sessionを取得するメソッド
	 * @return session
	 */
	public Map<String, Object> getSession() {
		return session;
	}

	/**
	 * @param sessionをセットするメソッド
	 * @param session
	 */
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
