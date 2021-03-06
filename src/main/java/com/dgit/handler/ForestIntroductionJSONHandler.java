package com.dgit.handler;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.codehaus.jackson.map.ObjectMapper;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.ForestDao;
import com.dgit.model.Forest;
import com.dgit.util.MySqlSessionFactory;

public class ForestIntroductionJSONHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		SqlSession sqlSession = null;
		
		try{
			sqlSession = MySqlSessionFactory.openSession();
			ForestDao dao = sqlSession.getMapper(ForestDao.class);
			List<Forest> list = dao.selectListAllForest();
			
			ObjectMapper om = new ObjectMapper();
			String json = om.writeValueAsString(list);
		//	System.out.println(json);
			
			res.setContentType("application/json;charset=utf-8");
			PrintWriter out = res.getWriter();
			out.print(json);
			out.flush();
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}	
		return null;
	}

}
