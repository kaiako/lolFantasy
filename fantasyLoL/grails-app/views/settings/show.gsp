
<%@ page import="object.Settings" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'settings.label', default: 'Settings')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<content tag='main'>
		<a href="#show-settings" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-settings" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list settings">
			
				<g:if test="${settingsInstance?.adc}">
				<li class="fieldcontain">
					<span id="adc-label" class="property-label"><g:message code="settings.adc.label" default="Adc" /></span>
					
						<span class="property-value" aria-labelledby="adc-label"><g:link controller="pointSetting" action="show" id="${settingsInstance?.adc?.id}">${settingsInstance?.adc?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${settingsInstance?.jungle}">
				<li class="fieldcontain">
					<span id="jungle-label" class="property-label"><g:message code="settings.jungle.label" default="Jungle" /></span>
					
						<span class="property-value" aria-labelledby="jungle-label"><g:link controller="pointSetting" action="show" id="${settingsInstance?.jungle?.id}">${settingsInstance?.jungle?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${settingsInstance?.mid}">
				<li class="fieldcontain">
					<span id="mid-label" class="property-label"><g:message code="settings.mid.label" default="Mid" /></span>
					
						<span class="property-value" aria-labelledby="mid-label"><g:link controller="pointSetting" action="show" id="${settingsInstance?.mid?.id}">${settingsInstance?.mid?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${settingsInstance?.proteam}">
				<li class="fieldcontain">
					<span id="proteam-label" class="property-label"><g:message code="settings.proteam.label" default="Proteam" /></span>
					
						<span class="property-value" aria-labelledby="proteam-label"><g:link controller="pointSetting" action="show" id="${settingsInstance?.proteam?.id}">${settingsInstance?.proteam?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${settingsInstance?.support}">
				<li class="fieldcontain">
					<span id="support-label" class="property-label"><g:message code="settings.support.label" default="Support" /></span>
					
						<span class="property-value" aria-labelledby="support-label"><g:link controller="pointSetting" action="show" id="${settingsInstance?.support?.id}">${settingsInstance?.support?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${settingsInstance?.top}">
				<li class="fieldcontain">
					<span id="top-label" class="property-label"><g:message code="settings.top.label" default="Top" /></span>
					
						<span class="property-value" aria-labelledby="top-label"><g:link controller="pointSetting" action="show" id="${settingsInstance?.top?.id}">${settingsInstance?.top?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${settingsInstance?.id}" />
					<g:link class="edit" action="edit" id="${settingsInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
		</content>
	</body>
</html>
