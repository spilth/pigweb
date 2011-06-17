<%@ page import="com.buildndeploy.piglatin.Translator" %>
<%
String message = "Hello, world!";
Translator translator = new Translator();
String piglatin = translator.toPiglatin(message);
%>

<html>
	<head>
		<title>Pig Latin Translator</title>

		<style="text/css">
			body {
				font-family: "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;
				font-weight: 300;
				background: #fff;
				color: #000;
			}
		</style>
	</head>

	<body>
		<h1>Pig Latin Translator</h1>

		<h2>English</h2>
		<p><%= message %></p>

		<h2>Pig Latin</h2>
		<p><%= piglatin %></p>

		<h2>About</h2>

		<p>This site is an example usage of the piglib library for translating English to Pig Latin.</p>
		
		<ul>
			<li><a href="https://github.com/buildndeploy/piglib">piglib on GitHub</a></li>
			<li><a href="https://github.com/buildndeploy/pigweb">pigweb on GitHub</a></li>
			<li><a href="https://buildndeploy.ci.cloudbees.com/">CloudBees Jenkins server for piglib and pigweb</a></li>
		</ul>
		
		<p>Jenkins and site hosting provided by <a href="http://cloudbees.com/">CloudBees</a></p>
		
		<p><a href="http://cloudbees.com/"><img src="http://web-static-cloudfront.s3.amazonaws.com/images/badges/BuiltOnDEV.png" width="128" height="92" /></p>
				
	</body>
</html>
