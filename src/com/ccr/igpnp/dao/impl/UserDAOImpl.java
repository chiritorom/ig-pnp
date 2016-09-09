package com.ccr.igpnp.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.ccr.igpnp.dao.UserDAO;
import com.ccr.igpnp.model.PersonDTO;
import com.ccr.igpnp.model.UserDTO;
import com.ccr.igpnp.util.ConnectDB;

public class UserDAOImpl implements UserDAO {
	
	Connection cn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

	@Override
	public UserDTO findByUserAndPassword(String username, String password) {
		
		UserDTO user = null;
		
		try {
			cn = new ConnectDB().getConnectDB();
			ps = cn.prepareStatement("SELECT * FROM [User] us INNER JOIN Person pe ON pe.personId = us.personId  WHERE username = ? AND password = ?");
			ps.setString(1, username);
			ps.setString(2, password);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				
				user = new UserDTO();
				PersonDTO person = new PersonDTO();
				
				person.setFirstName(rs.getString(8));
				
				user.setUserId(rs.getInt(1));
				user.setPerson(person);
				user.setUsername(rs.getString(3));
			}
			cn.close();
            ps.close();
            rs.close();
            
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return user;
	}

}
