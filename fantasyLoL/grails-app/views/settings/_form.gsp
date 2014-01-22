<%@ page import="object.Settings" %>



<div class="fieldcontain ${hasErrors(bean: settingsInstance, field: 'adc', 'error')} required">
	<label for="adc">
		<g:message code="settings.adc.label" default="Adc" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="adc" name="adc.id" from="${object.PointSetting.list()}" optionKey="id" required="" value="${settingsInstance?.adc?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: settingsInstance, field: 'jungle', 'error')} required">
	<label for="jungle">
		<g:message code="settings.jungle.label" default="Jungle" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="jungle" name="jungle.id" from="${object.PointSetting.list()}" optionKey="id" required="" value="${settingsInstance?.jungle?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: settingsInstance, field: 'mid', 'error')} required">
	<label for="mid">
		<g:message code="settings.mid.label" default="Mid" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="mid" name="mid.id" from="${object.PointSetting.list()}" optionKey="id" required="" value="${settingsInstance?.mid?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: settingsInstance, field: 'proteam', 'error')} required">
	<label for="proteam">
		<g:message code="settings.proteam.label" default="Proteam" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="proteam" name="proteam.id" from="${object.PointSetting.list()}" optionKey="id" required="" value="${settingsInstance?.proteam?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: settingsInstance, field: 'support', 'error')} required">
	<label for="support">
		<g:message code="settings.support.label" default="Support" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="support" name="support.id" from="${object.PointSetting.list()}" optionKey="id" required="" value="${settingsInstance?.support?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: settingsInstance, field: 'top', 'error')} required">
	<label for="top">
		<g:message code="settings.top.label" default="Top" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="top" name="top.id" from="${object.PointSetting.list()}" optionKey="id" required="" value="${settingsInstance?.top?.id}" class="many-to-one"/>
</div>

