
<%@ page import="object.League" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'league.label', default: 'League')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>	
		<content tag="main">
		<a href="#list-league" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-league" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="league.settings.label" default="Settings" /></th>
					
						<g:sortableColumn property="name" title="${message(code: 'league.name.label', default: 'Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${leagueInstanceList}" status="i" var="leagueInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${leagueInstance.id}">${fieldValue(bean: leagueInstance, field: "settings")}</g:link></td>
					
						<td>${fieldValue(bean: leagueInstance, field: "name")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${leagueInstanceTotal}" />
			</div>
		</div>
		</content>
	</body>
</html>
