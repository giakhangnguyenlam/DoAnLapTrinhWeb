package ute.webapplication.DAO.web;

import java.sql.Connection;

public interface IObjectDAO {
	public boolean insert(Connection conn, Object obj);
	public boolean update(Connection conn, Object obj, String name);
	public boolean delete(Connection conn, String name);
}
