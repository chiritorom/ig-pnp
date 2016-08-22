package com.ccr.igpnp.dao;

import java.util.List;

import com.ccr.igpnp.model.DocumentDTO;

public interface DocumentDAO {
	
	public List<DocumentDTO> findAll();

}
