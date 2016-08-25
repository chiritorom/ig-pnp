package com.ccr.igpnp.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ccr.igpnp.dao.GenderDAO;
import com.ccr.igpnp.model.Gender;
import com.ccr.igpnp.util.ConnectDB;

public class GenderDAOImpl implements GenderDAO {
	
	Connection cn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
	
	@Override
	public List<Gender> findAll() {
		
		List<Gender> listGender = new ArrayList<Gender>();
		
		try {
			
			cn = new ConnectDB().getConnectDB();
			ps = cn.prepareStatement("SELECT * FROM Gender");
			rs = ps.executeQuery();
			
			while(rs.next()) {
				Gender gender = new Gender();
				
				gender.setGenderId(rs.getInt(1));
				gender.setDescription(rs.getString(2));
				gender.setAcronym(rs.getString(3));
				
				listGender.add(gender);
				
			}
			
			cn.close();
            ps.close();
            rs.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return listGender;
	}

}
