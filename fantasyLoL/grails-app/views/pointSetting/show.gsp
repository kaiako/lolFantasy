
<%@ page import="object.PointSetting" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pointSetting.label', default: 'PointSetting')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<content tag='main'>
		<a href="#show-pointSetting" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-pointSetting" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list pointSetting">
			
				<g:if test="${pointSettingInstance?.assist}">
				<li class="fieldcontain">
					<span id="assist-label" class="property-label"><g:message code="pointSetting.assist.label" default="Assist" /></span>
					
						<span class="property-value" aria-labelledby="assist-label"><g:fieldValue bean="${pointSettingInstance}" field="assist"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pointSettingInstance?.baron}">
				<li class="fieldcontain">
					<span id="baron-label" class="property-label"><g:message code="pointSetting.baron.label" default="Baron" /></span>
					
						<span class="property-value" aria-labelledby="baron-label"><g:fieldValue bean="${pointSettingInstance}" field="baron"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pointSettingInstance?.cs}">
				<li class="fieldcontain">
					<span id="cs-label" class="property-label"><g:message code="pointSetting.cs.label" default="Cs" /></span>
					
						<span class="property-value" aria-labelledby="cs-label"><g:fieldValue bean="${pointSettingInstance}" field="cs"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pointSettingInstance?.death}">
				<li class="fieldcontain">
					<span id="death-label" class="property-label"><g:message code="pointSetting.death.label" default="Death" /></span>
					
						<span class="property-value" aria-labelledby="death-label"><g:fieldValue bean="${pointSettingInstance}" field="death"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pointSettingInstance?.dragon}">
				<li class="fieldcontain">
					<span id="dragon-label" class="property-label"><g:message code="pointSetting.dragon.label" default="Dragon" /></span>
					
						<span class="property-value" aria-labelledby="dragon-label"><g:fieldValue bean="${pointSettingInstance}" field="dragon"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pointSettingInstance?.kill}">
				<li class="fieldcontain">
					<span id="kill-label" class="property-label"><g:message code="pointSetting.kill.label" default="Kill" /></span>
					
						<span class="property-value" aria-labelledby="kill-label"><g:fieldValue bean="${pointSettingInstance}" field="kill"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pointSettingInstance?.league}">
				<li class="fieldcontain">
					<span id="league-label" class="property-label"><g:message code="pointSetting.league.label" default="League" /></span>
					
						<span class="property-value" aria-labelledby="league-label"><g:link controller="league" action="show" id="${pointSettingInstance?.league?.id}">${pointSettingInstance?.league?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${pointSettingInstance?.loss}">
				<li class="fieldcontain">
					<span id="loss-label" class="property-label"><g:message code="pointSetting.loss.label" default="Loss" /></span>
					
						<span class="property-value" aria-labelledby="loss-label"><g:fieldValue bean="${pointSettingInstance}" field="loss"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pointSettingInstance?.position}">
				<li class="fieldcontain">
					<span id="position-label" class="property-label"><g:message code="pointSetting.position.label" default="Position" /></span>
					
						<span class="property-value" aria-labelledby="position-label"><g:fieldValue bean="${pointSettingInstance}" field="position"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pointSettingInstance?.towerLoss}">
				<li class="fieldcontain">
					<span id="towerLoss-label" class="property-label"><g:message code="pointSetting.towerLoss.label" default="Tower Loss" /></span>
					
						<span class="property-value" aria-labelledby="towerLoss-label"><g:fieldValue bean="${pointSettingInstance}" field="towerLoss"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pointSettingInstance?.towerWon}">
				<li class="fieldcontain">
					<span id="towerWon-label" class="property-label"><g:message code="pointSetting.towerWon.label" default="Tower Won" /></span>
					
						<span class="property-value" aria-labelledby="towerWon-label"><g:fieldValue bean="${pointSettingInstance}" field="towerWon"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pointSettingInstance?.win}">
				<li class="fieldcontain">
					<span id="win-label" class="property-label"><g:message code="pointSetting.win.label" default="Win" /></span>
					
						<span class="property-value" aria-labelledby="win-label"><g:fieldValue bean="${pointSettingInstance}" field="win"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${pointSettingInstance?.id}" />
					<g:link class="edit" action="edit" id="${pointSettingInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
		</content>
	</body>
</html>
