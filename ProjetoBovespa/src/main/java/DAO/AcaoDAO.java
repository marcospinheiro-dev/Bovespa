package DAO;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import DTO.AcaoDTO;


public class AcaoDAO {
	
	Connection con;
	PreparedStatement pstm;
	ResultSet rs;
	ArrayList<AcaoDTO> lista = new ArrayList<>();
	
	
	
	public void CadastrarAcao(AcaoDTO objAcaoDTO) throws ClassNotFoundException {
		
		String sql = "insert into acao (codigo_acao) value(?)";
		con = new ConexaoDAO().conexaoBD();
		
		try {
				pstm = con.prepareStatement(sql);
				pstm.setString(1, objAcaoDTO.getCodigo_acao());
				
				pstm.execute();
				pstm.close();				
			
		} catch (SQLException e) {			
		}		
	}
	
	public ArrayList<AcaoDTO> PesquisarAcao() throws ClassNotFoundException{
		
		String sql = "select * from acao";
		con = new ConexaoDAO().conexaoBD();
		
		try {
				pstm = con.prepareStatement(sql);
				rs = pstm.executeQuery(sql); 
				
				while (rs.next()) {
					AcaoDTO objAcaoDTO = new AcaoDTO();
					objAcaoDTO.setId_acao(rs.getInt("id_acao"));
					objAcaoDTO.setCodigo_acao(rs.getString("codigo_acao"));
					
					lista.add(objAcaoDTO);
				}
			
		} catch (SQLException e) {						
		}
		
		return lista;
	}
	
	public void ExcluirAcao(AcaoDTO objAcaoDTO) throws ClassNotFoundException {
		
		String sql = "delete from acao where id_acao = ?";
		con = new ConexaoDAO().conexaoBD();
		
		try {
				pstm = con.prepareStatement(sql);
				pstm.setInt(1, objAcaoDTO.getId_acao());
				
				pstm.execute();
				pstm.close();
			
			
		} catch (SQLException e) {
			
		}
	}
	
	public void AlterarAcao(AcaoDTO objAcaoDTO) throws ClassNotFoundException {
		
		String sql = "update acao set codigo_acao = ? where id_acao = ?";
		con = new ConexaoDAO().conexaoBD();
		
		try {
			
			pstm = con.prepareStatement(sql);
			pstm.setString(1, objAcaoDTO.getCodigo_acao());
			pstm.setInt(2, objAcaoDTO.getId_acao());
			
			pstm.execute();
			pstm.close();
			
		} catch (SQLException e) {
			
		}
		
	}

}
