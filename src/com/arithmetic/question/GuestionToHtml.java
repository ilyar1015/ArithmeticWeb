package com.arithmetic.question;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.sf.json.JSONArray;
public class GuestionToHtml extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private ArrayList<Topic> al=null;
	SetAQuestion sqt=null;
	ListToJson ltj;
	int textTime=1;
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //设置编码
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        //设置返回文本的类型
        response.setContentType("text/json");
        String Ttimes=request.getParameter("n");
        textTime=Integer.valueOf(Ttimes);
        initTest();
//        String jsonString = "{\"user\":{\"name\":\"lf\",\"address\":{\"province\":\"广东\",\"city\":\"深圳\"}}}";
        String jsonString=toJson();
        System.out.println(jsonString);
        response.getWriter().print(jsonString);
                
        
    }
    private void initTest(){
    	al=new ArrayList<Topic>();
    	sqt=new SetAQuestion(textTime);
    	ltj=new ListToJson();
    }
    
    private String toJson(){
    	al=sqt.getQuestion();
//    	String JSON="{\"topic0\":"+"\""+al.get(0).getTopic()+"\",\"result0\":"+"\""+al.get(0).getResult()+"\"";
//    	for(int i=1;i<al.size();i++){
//    		JSON=JSON+",\"topic"+i+"\":\""+al.get(i).getTopic()+"\",\"result"+i+"\":\""+al.get(0).getResult()+"\"";
//    	}
    	JSONArray JSON=ltj.LTJ(al);
    	return JSON.toString();
    }
}
