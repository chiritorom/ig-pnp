package com.ccr.igpnp.dao;

import java.util.List;

import com.ccr.igpnp.model.IdentityCard;

public interface IdentityCardDAO {
	
	public List<IdentityCard> findAll();
	public IdentityCard findById(int identityCardId);

}
