
<%@ page import="object.PointSetting" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pointSetting.label', default: 'PointSetting')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<content tag='main'>
		<a href="#list-pointSetting" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-pointSetting" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="assist" title="${message(code: 'pointSetting.assist.label', default: 'Assist')}" />
					
						<g:sortableColumn property="baron" title="${message(code: 'pointSetting.baron.label', default: 'Baron')}" />
					
						<g:sortableColumn property="cs" title="${message(code: 'pointSetting.cs.label', default: 'Cs')}" />
					
						<g:sortableColumn property="death" title="${message(code: 'pointSetting.death.label', default: 'Death')}" />
					
						<g:sortableColumn property="dragon" title="${message(code: 'pointSetting.dragon.label', default: 'Dragon')}" />
					
						<g:sortableColumn property="kill" title="${message(code: 'pointSetting.kill.label', default: 'Kill')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${pointSettingInstanceList}" status="i" var="pointSettingInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${pointSettingInstance.id}">${fieldValue(bean: pointSettingInstance, field: "assist")}</g:link></td>
					
						<td>${fieldValue(bean: pointSettingInstance, field: "baron")}</td>
					
						<td>${fieldValue(bean: pointSettingInstance, field: "cs")}</td>
					
						<td>${fieldValue(bean: pointSettingInstance, field: "death")}</td>
					
						<td>${fieldValue(bean: pointSettingInstance, field: "dragon")}</td>
					
						<td>${fieldValue(bean: pointSettingInstance, field: "kill")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${pointSettingInstanceTotal}" />
			</div>
		</div>
		</content>
	</body>
</html>
