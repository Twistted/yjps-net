package com.test.web.houseweb;


import java.util.List;
import com.test.web.entity.UserEntity;
import org.apache.ibatis.session.SqlSession;
import com.test.web.util.DBUtil;
import com.test.web.mapper.UserMapper;


public class App 
{
    public static void main( String[] args )
    {
    	
        SqlSession session = DBUtil.getSession();
        
        try {
			
			UserMapper mapper = session.getMapper(UserMapper.class);
			
			
			
			
			
		} finally {
			DBUtil.closeSession();
		}
        
    }
}
