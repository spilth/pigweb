<%@ page import="com.buildndeploy.piglatin.Translator" %>
<html>
<body>
<h2>Hello World!</h2>
<%
	Translator translator = new Translator();
	String piglatin = translator.toPiglatin("Hello, world!");
%>

<h2><%= piglatin %></h2>

</body>
</html>
