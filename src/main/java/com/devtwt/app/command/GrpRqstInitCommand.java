package com.devtwt.app.command;

import com.devtwt.app.bean.RootBean;

public interface GrpRqstInitCommand {
	
	void preProc(RootBean bean);
	void exec();
	RootBean postProc();
}
