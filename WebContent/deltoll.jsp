<%@page import="com.Data.connjdbc"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
        <%
        	Statement st = connjdbc.getDatacn();   
        	String delete_Fid = request.getParameter("delete_id");
        	int FId = Integer.parseInt(delete_Fid);
        	System.out.print(FId);

        	try {
        		int i = 0;
        		i = st.executeUpdate("Delete from tolltax_cost_per_vehicle where vehicle_type_id ="
        				+ FId + "");
        		if (i > 0) {
        			response.sendRedirect("toll.jsp");
        		}
        	} catch (Exception e) {
        		System.out.print("Delete" + e);
        	}
        %>