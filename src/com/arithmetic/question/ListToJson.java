package com.arithmetic.question;
import java.util.ArrayList;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
public class ListToJson {
	JSONArray ja;
	JSONObject jb;
	public JSONArray LTJ(ArrayList<Topic> al) {
		// TODO Auto-generated method stub
		ja=new JSONArray();
		for(int i=0;i<al.size();i++){
			jb=new JSONObject();
			jb.put("topic", al.get(i).getTopic());
			jb.put("result", al.get(i).getResult());
			ja.add(jb);
		}
		return ja;
	}
	
}
