<%@ page import="java.sql.*" %>
<%@ page import="java.lang.*" %>
<table border=1>
<tr>
<td><h1>UserName</h1></td>
<td><h1>company name</h1></td>
<td><h1>company Address</h1></td>
<td><h1>no of employees</h1></td>
<td><h1>no of vacancy</h1></td>
<td><h1>contact no</h1></td>
<td><h1>no of branches</h1></td>

</tr>

<%
		
		Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/gedcom","root","");
		Statement st1 = con1.createStatement();
		String sql3 = "select * from gedcom ORDER BY ID;";
	    
		
    	ResultSet rs1 = st1.executeQuery(sql3);
    	while(rs1.next()){
		%><tr>
		<td>
		<%
			out.println(rs1.getString("ID"));
			
		%>
		</td>
		<td>
		<%
			
			out.println(rs1.getString("FirstName"));
		
			
	
		%></td>
		<td>
		<%
			
			out.println(rs1.getString("LastName"));	
		

		
		%></td>
		<td>
		<%
			
			out.println(rs1.getString("Sex"));	
		

		
		%></td>
		<td>
		<%
			
			out.println(rs1.getString("FatherName"));	
		

		
		%></td>
		<td>
		<%
			
			out.println(rs1.getString("MotherName"));	
		

		
		%></td>
		<td>
		<%
			
			out.println(rs1.getString("FamilyName"));	
		

		
		%></td>
		
</tr>
<%
}
%>

</table>