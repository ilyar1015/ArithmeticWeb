package com.arithmetic.question;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GuestionToHtml extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private ArrayList<Topic> al=null;
	SetAQuestion sqt=null;
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //设置编码
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        //设置返回文本的类型
        response.setContentType("text/json");
        initTest();
        String jsonString = "{\"user\":{\"name\":\"lf\",\"address\":{\"province\":\"广东\",\"city\":\"深圳\"}}}";
//        String jsonString=toJson();
        System.out.println(jsonString);
        response.getWriter().print(jsonString);
                
        
    }
    private void initTest(){
    	al=new ArrayList<Topic>();
    	sqt=new SetAQuestion(1);
    }
    
    private String toJson(){
    	al=sqt.getQuestion();
    	String JSON="";
    	for(int i=0;i<al.size();i++){
    		JSON="{\"question\":\"hello\",\"answer\":\"ok\"}";
    	}
    	return JSON;
    }
}
