
<%@ page import="object.Settings" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'settings.label', default: 'Settings')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<content tag='main'>
		<a href="#list-settings" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-settings" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="settings.adc.label" default="Adc" /></th>
					
						<th><g:message code="settings.jungle.label" default="Jungle" /></th>
					
						<th><g:message code="settings.mid.label" default="Mid" /></th>
					
						<th><g:message code="settings.proteam.label" default="Proteam" /></th>
					
						<th><g:message code="settings.support.label" default="Support" /></th>
					
						<th><g:message code="settings.top.label" default="Top" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${settingsInstanceList}" status="i" var="settingsInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${settingsInstance.id}">${fieldValue(bean: settingsInstance, field: "adc")}</g:link></td>
					
						<td>${fieldValue(bean: settingsInstance, field: "jungle")}</td>
					
						<td>${fieldValue(bean: settingsInstance, field: "mid")}</td>
					
						<td>${fieldValue(bean: settingsInstance, field: "proteam")}</td>
					
						<td>${fieldValue(bean: settingsInstance, field: "support")}</td>
					
						<td>${fieldValue(bean: settingsInstance, field: "top")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${settingsInstanceTotal}" />
			</div>
		</div>
		</content>
	</body>
</html>
