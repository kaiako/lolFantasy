<%@ page import="object.League" %>



<div class="fieldcontain ${hasErrors(bean: leagueInstance, field: 'settings', 'error')} ">
	<label for="settings">
		<g:message code="league.settings.label" default="Settings" />
		
	</label>
	<g:select id="settings" name="settings.id" from="${object.Settings.list()}" optionKey="id" value="${leagueInstance?.settings?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: leagueInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="league.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${leagueInstance?.name}"/>
</div>

