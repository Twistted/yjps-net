package com.test.web.util;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class DBUtil {
	
	private static final String RESOURCE = "mybatis-config.xml";
	private static SqlSessionFactory sessionFactory = null;
	private static ThreadLocal<SqlSession> threadLocal = new ThreadLocal<SqlSession>();
    
    static {
    	Reader reader = null;
        try {
            //使用MyBatis提供的Resources类加载mybatis的配置文件
            reader = Resources.getResourceAsReader(RESOURCE);
            //构建SqlSession的工厂
            sessionFactory = new SqlSessionFactoryBuilder().build(reader);
        } catch (Exception e) {
            e.printStackTrace();
            throw new ExceptionInInitializerError("初始化MyBatis错误，请检查配置文件或数据库");
        }
    }
    
    public static SqlSessionFactory getSessionFactory() {
    	return sessionFactory;
    }
    
    //创建能执行映射文件中sql的SqlSession
    public static SqlSession getSession() {
    	//sessionThreadLocal的get()方法根据当前线程返回其对应的线程内部变量
    	//也就是我们需要的Session，多线程情况下共享数据库链接是不安全的
    	//ThreadLocal保证了每个线程都有自己的Session
    	SqlSession session = threadLocal.get();
    	// 如果session为null，则打开新的session
    	if (session == null){
    		session = (sessionFactory !=null) ? sessionFactory.openSession() : null;
    		threadLocal.set(session);
    	}
    	
    	return session;
    }
    
    public static void closeSession() {
    	SqlSession session = (SqlSession) threadLocal.get();
    	threadLocal.set(null);
    	if (session != null) {
    		session.close();
    	}
    }
   
}