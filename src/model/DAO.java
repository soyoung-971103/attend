package model;

import java.sql.Connection;
import java.sql.SQLException;

public interface DAO {	//DATA Access Object : ������ ���� ��ü
	Connection getConnection() throws SQLException;
}
