package com.crowd.Interface;

import com.crowd.Bean.BankAccountBean;
import com.crowd.Bean.EventBean;
import com.crowd.Bean.RegisterBean;
import com.crowd.Bean.UploadBean;

public interface CrowdInterface {
	
	public int register(RegisterBean rb);
	public int login(String username, String password);
	public int investorregister(RegisterBean rb);
	public int investorlogin(String username, String password);
	public int bankaccount(BankAccountBean ab);
	public int banklogin(String email, String password);
	public int fileupload(UploadBean bean);
	public String getpublickey(String filename);
	public int eventregister(EventBean ob);

}
