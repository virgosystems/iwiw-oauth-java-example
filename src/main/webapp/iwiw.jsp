<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<title>iWiW OAuth tesztalkalmazás</title>
		<link rel="stylesheet" type="text/css" href="iwiw.css" />
	</head>
	<body>
		<form action="IWiW" method="get">
			<fieldset>
				<legend>Access token</legend>
				<c:choose>
					<c:when test="${not empty token}">
						${token} <a href="Reset?nextPage=iwiw.jsp">törlés</a>
					</c:when>
					<c:otherwise>
						még nincs access tokened <input type="submit" value="Szerzek egyet!"/>
					</c:otherwise>						
				</c:choose>				
			</fieldset>
		</form>
		
		<form action="IWiW" method="get">
			<c:if test="${not empty responseBody or not empty person or not empty people}">
				<fieldset>
					<legend>Válasz</legend>
					<c:if test="${responseBody ne null}">
						JSON:
						<pre class="prettyprint lang-json" id="json">
							${responseBody}
						</pre>
					</c:if>
					<c:if test="${person ne null}">					
						Person:
						<p class="person"><img src="${person.thumbnailUrl}"/><c:out value="${person.displayName}"/></p>
					</c:if>
					<c:if test="${people ne null}">
						People:
						<ol>
							<c:forEach items="${people}" var="person">
								<li class="person"><img src="${person.thumbnailUrl}"/><c:out value="${person.displayName}"/></li>
							</c:forEach>					
						</ol>
					</c:if>
				</fieldset>		
			</c:if>
			<div class="c2">
				<fieldset>
					<legend>REST játszótér</legend>
					<p>
						<label>URL:</label>
						<input type="text" name="url" value="${not empty param.url ? param.url : 'people/@me/@self'}"/>
					</p>
					<p>
						<label>	HTTP request method:</label>						
						<select name="httpMethod">
							<c:forTokens items="GET POST PUT" delims=" " var="item">
								<option${item eq param.httpMethod ? ' selected="selected"' : ''}>${item}</option>
							</c:forTokens>
						</select>
						
					</p>
					<p>
						<label>	HTTP request body (JSON):</label>
						<textarea rows="10" cols="50" name="requestBody">${param.requestBody}</textarea>
					</p>
					<p>
						<input type="submit" value="MEHET" name="rest"/><br/>
					</p>
				</fieldset>
			</div>
			<div class="c2">
				<fieldset class="javaclient">
					<legend>OpenSocial Java Client példák</legend>
					<ul>
						<li><a href="IWiW?fetchPerson">Saját magam</a></li>
						<li><a href="IWiW?fetchFriends">Ismerősök</a></li>
					</ul>
						
					<fieldset>
						<legend>Activity létrehozás</legend>
						<p>
							<label>title</label>
							<input name="title" value="Teszt activity title" type="text"/>
						</p>
						<p>
							<label>body:</label>
							<input name="body" value="Teszt activity body" type="text"/>
						</p>
						<p>
							<input type="submit" name="createActivity" value="MediaItem nélkül" type="text"/>
						</p>
						<fieldset>
							<legend>MediaItem</legend>
							<p>
								<label>title:</label>
								<input name="mediaitem_title" value="Teszt activity mediaItem title" type="text"/>
							</p>
							<p>
								<label>url:</label> 
								<input name="mediaitem_url" value="http://virgo.hu/" type="text"/>
							</p>
							<p>
								<label>thumbnailUrl: </label>
								<input name="mediaitem_thumbnailUrl" value="http://www.virgo.hu/img/logo.png" type="text"/>
							</p>
							<p>
								<input type="submit" name="createActivity2" value="MediaItemmel"/>
							</p>
						</fieldset>
					</fieldset>
				</fieldset>
			</div>
		</form>
		<script src="iwiw.js"></script>
	</body>
</html>