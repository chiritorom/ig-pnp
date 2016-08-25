package com.ccr.igpnp.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ccr.igpnp.dao.MaritalStatusDAO;
import com.ccr.igpnp.model.MaritalStatus;
import com.ccr.igpnp.util.ConnectDB;

public class MaritalStatusDAOImpl implements MaritalStatusDAO {
	
	Connection cn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

	@Override
	public List<MaritalStatus> findAll() {

		List<MaritalStatus> listMaritalStatus = new ArrayList<MaritalStatus>();
		
		try {
			cn = new ConnectDB().getConnectDB();
			ps = cn.prepareStatement("SELECT * FROM MaritalStatus");
			rs = ps.executeQuery();
			
			while(rs.next()) {
				MaritalStatus maritalStatus = new MaritalStatus();
				
				maritalStatus.setMaritalStatusId(rs.getInt(1));
				maritalStatus.setDescription(rs.getString(2));
				
				listMaritalStatus.add(maritalStatus);
			}
			
			cn.close();
            ps.close();
            rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return listMaritalStatus;
	}
	
	

}
