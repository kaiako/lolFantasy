
<%@ page import="object.Account" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'account.label', default: 'Account')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<content tag="main">
		<a href="#list-account" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-account" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="email" title="${message(code: 'account.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="firstName" title="${message(code: 'account.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'account.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="losses" title="${message(code: 'account.losses.label', default: 'Losses')}" />
					
						<g:sortableColumn property="middleName" title="${message(code: 'account.middleName.label', default: 'Middle Name')}" />
					
						<g:sortableColumn property="profilePicturePath" title="${message(code: 'account.profilePicturePath.label', default: 'Profile Picture Path')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${accountInstanceList}" status="i" var="accountInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${accountInstance.id}">${fieldValue(bean: accountInstance, field: "email")}</g:link></td>
					
						<td>${fieldValue(bean: accountInstance, field: "firstName")}</td>
					
						<td>${fieldValue(bean: accountInstance, field: "lastName")}</td>
					
						<td>${fieldValue(bean: accountInstance, field: "losses")}</td>
					
						<td>${fieldValue(bean: accountInstance, field: "middleName")}</td>
					
						<td>${fieldValue(bean: accountInstance, field: "profilePicturePath")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${accountInstanceTotal}" />
			</div>
		</div>
		</content>
	</body>
</html>
