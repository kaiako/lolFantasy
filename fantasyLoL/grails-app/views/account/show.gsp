
<%@ page import="object.Account" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'account.label', default: 'Account')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<content tag="main">
		<a href="#show-account" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-account" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list account">
			
				<g:if test="${accountInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="account.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${accountInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="account.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${accountInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="account.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${accountInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.losses}">
				<li class="fieldcontain">
					<span id="losses-label" class="property-label"><g:message code="account.losses.label" default="Losses" /></span>
					
						<span class="property-value" aria-labelledby="losses-label"><g:fieldValue bean="${accountInstance}" field="losses"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.middleName}">
				<li class="fieldcontain">
					<span id="middleName-label" class="property-label"><g:message code="account.middleName.label" default="Middle Name" /></span>
					
						<span class="property-value" aria-labelledby="middleName-label"><g:fieldValue bean="${accountInstance}" field="middleName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.profilePicturePath}">
				<li class="fieldcontain">
					<span id="profilePicturePath-label" class="property-label"><g:message code="account.profilePicturePath.label" default="Profile Picture Path" /></span>
					
						<span class="property-value" aria-labelledby="profilePicturePath-label"><g:fieldValue bean="${accountInstance}" field="profilePicturePath"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="account.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${accountInstance?.user?.id}">${accountInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.wins}">
				<li class="fieldcontain">
					<span id="wins-label" class="property-label"><g:message code="account.wins.label" default="Wins" /></span>
					
						<span class="property-value" aria-labelledby="wins-label"><g:fieldValue bean="${accountInstance}" field="wins"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${accountInstance?.id}" />
					<g:link class="edit" action="edit" id="${accountInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
		</content>
	</body>
</html>
