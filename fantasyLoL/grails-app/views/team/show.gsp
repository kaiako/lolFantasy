
<%@ page import="object.Team" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'team.label', default: 'Team')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<content tag="main">
		<a href="#show-team" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-team" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list team">
			
				<g:if test="${teamInstance?.account}">
				<li class="fieldcontain">
					<span id="account-label" class="property-label"><g:message code="team.account.label" default="Account" /></span>
					
						<span class="property-value" aria-labelledby="account-label"><g:link controller="account" action="show" id="${teamInstance?.account?.id}">${teamInstance?.account?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${teamInstance?.league}">
				<li class="fieldcontain">
					<span id="league-label" class="property-label"><g:message code="team.league.label" default="League" /></span>
					
						<span class="property-value" aria-labelledby="league-label"><g:link controller="league" action="show" id="${teamInstance?.league?.id}">${teamInstance?.league?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${teamInstance?.losses}">
				<li class="fieldcontain">
					<span id="losses-label" class="property-label"><g:message code="team.losses.label" default="Losses" /></span>
					
						<span class="property-value" aria-labelledby="losses-label"><g:fieldValue bean="${teamInstance}" field="losses"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${teamInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="team.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${teamInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${teamInstance?.rank}">
				<li class="fieldcontain">
					<span id="rank-label" class="property-label"><g:message code="team.rank.label" default="Rank" /></span>
					
						<span class="property-value" aria-labelledby="rank-label"><g:fieldValue bean="${teamInstance}" field="rank"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${teamInstance?.wins}">
				<li class="fieldcontain">
					<span id="wins-label" class="property-label"><g:message code="team.wins.label" default="Wins" /></span>
					
						<span class="property-value" aria-labelledby="wins-label"><g:fieldValue bean="${teamInstance}" field="wins"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${teamInstance?.id}" />
					<g:link class="edit" action="edit" id="${teamInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
		</content>
	</body>
</html>
