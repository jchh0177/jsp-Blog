package com.cos.blog.utils;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

public class Script {

	public static void href(HttpServletResponse response, String url, String msg) throws IOException {
		// BufferedWriter는 내려쓰기가 없음. ("안녕 \n"), PrintWriter는 println 사용가능
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print("<script>");
		out.print("alert('"+msg+"');");
		out.print("location.href = '"+url+"';");
		out.print("</script>");
	}
	
	public static void back(HttpServletResponse response, String msg) throws IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print("<script>");
		out.print("alert('"+msg+"');");
		out.print("history.back();");
		out.print("</script>");			
	}
}
