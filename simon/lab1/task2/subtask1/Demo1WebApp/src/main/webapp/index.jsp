<%! int size = 100; %>
<html>
<body>
<h2>Font sizes</h2>
<% while(size >= 10) { %>
	<p style="font-size:<%=size %>px;">Font size <%=size  %> </p>
	<%size-=5; %>
<%} %>
</body>
</html>

