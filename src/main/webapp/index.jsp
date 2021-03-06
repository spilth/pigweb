<%@ page import="com.buildndeploy.piglatin.Translator" %>
<%

String english = "Hello, world!";
String piglatin = "";

if (request.getMethod().equals("POST")) {
	english = request.getParameter("english"); 
	Translator translator = new Translator();
	piglatin = translator.toPiglatin(english);
}

%>

<html>
	<head>
		<title>Pig Latin Translator</title>

		<style type="text/css">
			body {
				font-family: "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;
				font-weight: 300;
				background: #fff;
				color: #000;
			}
		</style>
		
		<script type="text/javascript">

		  var _gaq = _gaq || [];
		  _gaq.push(['_setAccount', 'UA-24168297-1']);
		  _gaq.push(['_trackPageview']);

		  (function() {
		    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
		  })();

		</script>
	</head>

	<body>
		<h1>Pig Latin Translator</h1>
		
		<% if (request.getMethod().equals("POST"))  { %>
			<h2>Original English</h2>
			<p><code><%= english %></code></p>

			<h2>Pig Latin</h2>
			<p><code><%= piglatin %></code></p>
		<% } %>

		<h2>English to Translate</h2>
		<form method="POST">
			<p>Enter the English you'd like to translate below and click "Translate".</p>
			<p><textarea rows="8" cols="80" name="english"><%= english %></textarea></p>
			<p><input type="submit" value="Translate" /></p>
		</form>

		<h2>About This Project</h2>

		<p>This site is an example usage of the piglib library for translating English to Pig Latin.</p>
		
		<h3>piglib</h3>

		<ul>
			<li><a href="https://github.com/buildndeploy/piglib">piglib on GitHub</a></li>
			<li><a href="https://buildndeploy.ci.cloudbees.com/job/piglib/">piglib CI on Jenkins by CloudBees</a></li>
			<li><a href="http://nemo.sonarsource.org/dashboard/index/com.buildndeploy:piglib">piglib Sonar Dashboard</a></li>
		</ul>
		
		<h3>pigweb</h3>
		
		<ul>
			<li><a href="https://github.com/buildndeploy/pigweb">pigweb on GitHub</a></li>
			<li><a href="https://buildndeploy.ci.cloudbees.com/job/pigweb/">pigweb CI on Jenkins by CloudBees</a></li>
			<li><a href="http://nemo.sonarsource.org/dashboard/index/com.buildndeploy:pigweb">pigweb Sonar Dashboard</a></li>
		</ul>
		
		<p>Jenkins and site hosting provided by <a href="http://cloudbees.com/">CloudBees</a></p>
		
		<p><a href="http://cloudbees.com/"><img src="http://web-static-cloudfront.s3.amazonaws.com/images/badges/BuiltOnDEV.png" width="128" height="92" /></a></p>
				
	</body>
</html>
