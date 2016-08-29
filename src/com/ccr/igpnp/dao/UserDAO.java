package com.ccr.igpnp.dao;

import com.ccr.igpnp.model.UserDTO;

public interface UserDAO {
	
	public UserDTO findByUserAndPassword(String username, String password);

}
