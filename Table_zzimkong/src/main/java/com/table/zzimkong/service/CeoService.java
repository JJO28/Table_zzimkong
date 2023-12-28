package com.table.zzimkong.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.table.zzimkong.mapper.CeoMapper;
import com.table.zzimkong.vo.CompanyVO;
import com.table.zzimkong.vo.MenuList;
import com.table.zzimkong.vo.MenuVO;


@Service
public class CeoService {
	
	@Autowired 
	private CeoMapper mapper;

	public int insertMenu(MenuVO menu, int com_id) {
		// TODO Auto-generated method stub
		return mapper.insertMenu(menu, com_id);
	}

	public List<CompanyVO> getMyCompanyList(int sIdx) {
		// TODO Auto-generated method stub
		return mapper.selectMycompanyList(sIdx);
	}

	public MenuVO getMenu(MenuVO menu) {
		// TODO Auto-generated method stub
		return mapper.selectMenu(menu);
	}

	public int modifyMenu(MenuVO menu) {
		// TODO Auto-generated method stub
		return mapper.updateMenu(menu);
	}

	public int removeMenu(MenuVO menu) {
		// TODO Auto-generated method stub
		return mapper.deleteMenu(menu);
	}
	
}