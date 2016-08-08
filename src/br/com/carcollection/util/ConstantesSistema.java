package br.com.carcollection.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ConstantesSistema {
	
	public final void FECHACONEXAO(PreparedStatement stmt, ResultSet rs, Connection con){
		
		try {
			if (con != null){
				con.close();
			}
			if (rs != null){
				rs.close();
			}
			if (stmt != null) {
				stmt.close();
			}
		} catch (Exception e) {
			System.out.println("Erro ao tentar encerrar conexões - STMT / RS / CON");
			e.printStackTrace();
		}
		
	}

}
