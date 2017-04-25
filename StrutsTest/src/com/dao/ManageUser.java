package com.dao;

import java.util.List;

import com.common.HibernateSessionFactory;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import com.entity.*;


public class ManageUser {
	
	//SessionFactory¿‡
	private HibernateSessionFactory sessionFactory;
	

	
	//µ«¬º—È÷§
	public boolean CheckLogin(String Name,String Pwd){
		
		boolean flag=false;
		Session session=sessionFactory.getSession();
		String hql = "from Users as u where u.Name = '" +Name+ "' and u.Pwd = '"+Pwd+"'";
		List<Users> users = session.createQuery(hql).list();
		//transaction.commit();
		if(users.size()>0){
			flag = true;
		}
		session.close();					
		return flag;
	}
	

}
