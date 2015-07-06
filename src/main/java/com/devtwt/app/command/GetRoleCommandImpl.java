package com.devtwt.app.command;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.devtwt.app.bean.RoleBean;
import com.devtwt.app.bean.RootBean;
import com.devtwt.app.bean.UserBean;
import com.devtwt.app.dao.RoleDao;

@Component
public class GetRoleCommandImpl implements
		GetRoleCommand {
	
	@Autowired
	private RootBean bean;
	@Autowired
	private RoleDao roleDao;

	@Override
	public void preProc(RootBean bean) {
		// TODO Auto-generated method stub
		this.bean = bean;
	}

	@Override
	public void exec() {
		// TODO Auto-generated method stub
		
		//ROLE_MASTERテーブルに格納されている全Roleを取得
		List<RoleBean> roleList = roleDao.getAllData();
		
		//リストボックス表示のため、グループの各メンバに全ロール情報をセット
		for(UserBean member : bean.getGroup().getMemberList()) {
			member.setRoleList(roleList);
			member.setSlctRoleId(member.getRoleId());
		}
		
	}

	@Override
	public RootBean postProc() {
		// TODO Auto-generated method stub
		return bean;
	}

}