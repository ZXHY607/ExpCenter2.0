package org.expc.setting;

import java.util.HashMap;
import java.util.Map;
public class Constant {
	   public static final  Map<String, Integer>PAGE_SIZE=new HashMap<String, Integer>();
	   static{
		   PAGE_SIZE.put("Admin",8);
		   PAGE_SIZE.put("Student", 8);
		   PAGE_SIZE.put("Teacher", 8);
		   PAGE_SIZE.put("Board", 8);
		   PAGE_SIZE.put("News", 8);
		   PAGE_SIZE.put("Course", 8);
		   PAGE_SIZE.put("Unit", 8);
		   PAGE_SIZE.put("NavItem", 15);
	   }
	   public static final Map<String,Nav> navMap = new HashMap<String, Nav>();
	   static{
		   navMap.put("01", new Nav("<a href='/010100.htm'>中心概况 ></a>","/zxgk.jsp"));
		   navMap.put("03", new Nav("<a href='/030100.htm'>实验教学 ></a>","/syjx.jsp"));
		   navMap.put("04", new Nav("<a href='/040100.htm'>虚拟仿真 ></a>","/xnfz.jsp"));
		   navMap.put("05", new Nav("<a href='/050100.htm'>中心成果 ></a>","/zxcg.jsp"));
		   navMap.put("06", new Nav("<a href='/060100.htm'>管理制度 ></a>","/glzd.jsp"));
		   navMap.put("07", new Nav("<a href='/070100.htm'>服务指南 ></a>","/fwzn.jsp"));
		   navMap.put("08", new Nav("<a href='/080100.htm'>下载中心 ></a>","/xzzx.jsp"));
		   navMap.put("0303", new Nav("<a href='/030100.htm'>实验教学 ></a><a href='/030301.htm'>设备环境 ></a>","/syjx.jsp"));
		   navMap.put("0304", new Nav("<a href='/030100.htm'>实验教学 ></a><a href='/030401.htm'>实验课程 ></a>","/syjx.jsp"));
		   navMap.put("0306", new Nav("<a href='/030100.htm'>实验教学 ></a><a href='/030601.htm'>创新班教学 ></a>","/syjx.jsp"));
		   navMap.put("0501", new Nav("<a href='/050101.htm'>中心成果 ></a><a href='/050101.htm'>教学成果 ></a>","/zxcg.jsp"));
		   navMap.put("0505", new Nav("<a href='/050101.htm'>中心成果 ></a><a href='/050501.htm'>教学效果 ></a>","/zxcg.jsp"));
		  
	   }
	   public static final String RESULT="/result.jsp",LOGIN="/login.jsp",HOME ="/home.jsp";
	   public static final String projectTitle = "大连理工大学实验教学中心";
}
