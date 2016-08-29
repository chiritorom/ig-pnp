package com.ccr.igpnp.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ccr.igpnp.dao.DocumentDAO;
import com.ccr.igpnp.model.DocumentDTO;
import com.ccr.igpnp.model.PersonDTO;
import com.ccr.igpnp.util.ConnectDB;

public class DocumentDAOImpl implements DocumentDAO {
	
	Connection cn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
	
	public List<DocumentDTO> findAll() {
		
		List<DocumentDTO> listDocument = new ArrayList<DocumentDTO>();
			
        try {
			cn = new ConnectDB().getConnectDB();
			ps = cn.prepareStatement("EXECUTE DocumentfindAll");
			rs = ps.executeQuery();
			
			while(rs.next()) {
		        DocumentDTO document = new DocumentDTO();
		        PersonDTO person = new PersonDTO();
		        
		        // Document
		        document.setDocumentId(rs.getInt(1));
		        document.setDocumentDate(rs.getString(2));
		        document.setDocumentNumber(rs.getString(3));
		        
		        // Person
		        person.setFirstName(rs.getString(5));
		        person.setLastName(rs.getString(6));
		        
		        document.setPerson(person);
		     		
		        listDocument.add(document);
		    }
			
			cn.close();
            ps.close();
            rs.close();
            
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
		return listDocument;
		
	}
}
