package com.devtwt.app.controller;

import java.security.Principal;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devtwt.app.bean.RootBean;
import com.devtwt.app.command.FinalizeCommand;
import com.devtwt.app.command.InitializeCommand;
import com.devtwt.app.command.LoginCommandInterface;
import com.devtwt.app.command.MockCommandInterface;
import com.devtwt.app.dao.SetupDaoInterface;

@Controller
public class ProfileController {
	
private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	InitializeCommand initilize;
	@Autowired
	FinalizeCommand finalize;
	@Autowired
	RootBean bean;

	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String profileInit(RootBean bean, Model model) {
		return "profile";
	}

}