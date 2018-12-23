package com.company.crm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.crm.domain.Systemlog;
import com.company.crm.mapper.SystemlogMapper;
import com.company.crm.service.ISystemlogService;

@Service
public class SystemlogServiceImpl implements ISystemlogService{

	@Autowired
	private SystemlogMapper mapper;
	
	@Override
	public int deleteByPrimaryKey(Long id) {
		return mapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Systemlog record) {
		return mapper.insert(record);
	}

	@Override
	public Systemlog selectByPrimaryKey(Long id) {
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public List<Systemlog> selectAll() {
		return mapper.selectAll();
	}

	@Override
	public int updateByPrimaryKey(Systemlog record) {
		return mapper.updateByPrimaryKey(record);
	}

}
