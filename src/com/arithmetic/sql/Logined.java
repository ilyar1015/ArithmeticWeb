package com.arithmetic.sql;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Login")
public class Logined extends HttpServlet {
	private static final long serialVersionUID = 1L;
	LinkSql ls;
	String jsonString;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //设置编码
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        //设置返回文本的类型
        response.setContentType("text/json");
        initTest();
        
     //   String Ttimes=request.getParameter("n");
        String name=request.getParameter("name");
        String password=request.getParameter("password");
        System.out.println(name+" ++ "+password);
        if(logined(name,password)){
        	jsonString="{\"massage\":true}";
        }else{
        	jsonString="{\"massage\":false}";
        }
//        String jsonString = "{\"user\":{\"name\":\"lf\",\"address\":{\"province\":\"广东\",\"city\":\"深圳\"}}}";
//        String jsonString=toJson();
        System.out.println(jsonString);
        response.getWriter().print(jsonString);
                
        
    }
	
	private void initTest(){
		ls=new LinkSql();
	}
	
	private boolean logined(String name,String password){
		ResultSet rs=ls.selectSqlDate(String.format("select * from user where name='%s'", name));
		try {
			while(rs.next()){
				if(rs.getString("name").equals(name)&&rs.getString("password").equals(password)){
					return true;
				}else{
					return false;
				}
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
}
