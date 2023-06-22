
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.environmentsurvey.utility.DBConnect"%>

<%-- Xoa Khao sat da tao cho Giao vien va Khoa --%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%-- Tao Truy van Xoa den CSDL dua tren ID ( Ma Khao sat ) --%>
<%-- ID ( Ma Khao sat ) duoc lay tu result.GetString(1) ben viewsurveytofaculty --%>

	<%
		String id = request.getParameter("id");
		if (id != null) {
			int userid = Integer.parseInt(id);

			Connection con = DBConnect.getConn();
			String sql = "DELETE FROM E_ADDSURVEYBYFACULTY WHERE ID=" + userid;
			PreparedStatement ps = con.prepareStatement(sql);
			int i = ps.executeUpdate();
			if (i > 0) {
	%>
	<jsp:forward page="/viewsurveytofaculty.jsp" />
	<%
		} else
	%>
	<%-- Dieu huong qua error neu khong Xoa duoc --%>
	<jsp:forward page="/error.jsp" />
	<%
		}
	%>
</body>
</html>