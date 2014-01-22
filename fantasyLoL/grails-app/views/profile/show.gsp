
<%@ page import="object.Profile" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'profile.label', default: 'Profile')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<content tag='main'>
		<a href="#show-profile" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-profile" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list profile">
			
				<g:if test="${profileInstance?.fileName}">
				<li class="fieldcontain">
					<span id="fileName-label" class="property-label"><g:message code="profile.fileName.label" default="File Name" /></span>
					
						<span class="property-value" aria-labelledby="fileName-label"><g:fieldValue bean="${profileInstance}" field="fileName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileInstance?.profileDir}">
				<li class="fieldcontain">
					<span id="profileDir-label" class="property-label"><g:message code="profile.profileDir.label" default="Profile Dir" /></span>
					
						<span class="property-value" aria-labelledby="profileDir-label"><g:fieldValue bean="${profileInstance}" field="profileDir"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileInstance?.teamDir}">
				<li class="fieldcontain">
					<span id="teamDir-label" class="property-label"><g:message code="profile.teamDir.label" default="Team Dir" /></span>
					
						<span class="property-value" aria-labelledby="teamDir-label"><g:fieldValue bean="${profileInstance}" field="teamDir"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${profileInstance?.id}" />
					<g:link class="edit" action="edit" id="${profileInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
		</content>
	</body>
</html>
