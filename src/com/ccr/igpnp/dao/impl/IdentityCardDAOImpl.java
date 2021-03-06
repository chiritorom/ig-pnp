package com.ccr.igpnp.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.ccr.igpnp.dao.IdentityCardDAO;
import com.ccr.igpnp.model.IdentityCard;
import com.ccr.igpnp.util.ConnectDB;

public class IdentityCardDAOImpl implements IdentityCardDAO {
	
	Connection cn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    @Override
    public List<IdentityCard> findAll() {
    	
    	List<IdentityCard> listIdentityCard = new ArrayList<IdentityCard>();
    	
    	try {
    		
    		cn = new ConnectDB().getConnectDB();
			ps = cn.prepareStatement("SELECT * FROM IdentityCard");
			rs = ps.executeQuery();
			
			while(rs.next()) {
				
				IdentityCard identityCard = new IdentityCard();
				
				identityCard.setIdentityCardId(rs.getInt(1));
				identityCard.setDescription(rs.getString(2));
				identityCard.setAcronym(rs.getString(3));
				
				listIdentityCard.add(identityCard);
				
			}
			
			cn.close();
            ps.close();
            rs.close();
			
		} catch (Exception e) {
			// TODO: handle exception
		}
    	
    	return listIdentityCard;
    	
    }
    
    @Override
    public IdentityCard findById(int identityCardId) {
    	    	
    	IdentityCard identityCard = null;
    	
    	try {
    		
    		cn = new ConnectDB().getConnectDB();
			ps = cn.prepareStatement("SELECT * FROM IdentityCard WHERE identityCardId = ?");
			ps.setInt(1, identityCardId);
			rs = ps.executeQuery();
			
			identityCard = new IdentityCard();

			while(rs.next()) {
				identityCard.setIdentityCardId(rs.getInt(1));
				identityCard.setDescription(rs.getString(2));
				identityCard.setAcronym(rs.getString(3));
			}
			
			cn.close();
            ps.close();
            rs.close();
			
		} catch (Exception e) {
			// TODO: handle exception
		}
    	
    	return identityCard;
    	
    }

}
