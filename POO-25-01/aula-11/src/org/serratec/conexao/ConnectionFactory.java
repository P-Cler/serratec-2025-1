package org.serratec.conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {

	private String url = "jdbc:postgresql://localhost:5432/bancopoo";
	private String username = "postgres";
	private String password = "root";
	
	
	public Connection getConnection() {
		System.out.println("Fazendo conexão...");
		Connection connection = null;
		try {
			connection = DriverManager.getConnection(url, username, password);
			System.out.println("Conexão bem sucedida");
		} catch (SQLException e) {
			System.err.println("Conexão não efetuada");
			e.printStackTrace();
		}
		return connection;
	}
}
