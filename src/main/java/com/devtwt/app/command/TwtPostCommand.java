package com.devtwt.app.command;

import com.devtwt.app.bean.RootBean;

public interface TwtPostCommand {
	
	void preProc(RootBean bean);
	void exec(String userName, String groupId);
	RootBean postProc();

}
