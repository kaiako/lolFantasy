<%@ page import="object.PointSetting" %>



<div class="fieldcontain ${hasErrors(bean: pointSettingInstance, field: 'assist', 'error')} required">
	<label for="assist">
		<g:message code="pointSetting.assist.label" default="Assist" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="assist" value="${fieldValue(bean: pointSettingInstance, field: 'assist')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: pointSettingInstance, field: 'baron', 'error')} required">
	<label for="baron">
		<g:message code="pointSetting.baron.label" default="Baron" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="baron" value="${fieldValue(bean: pointSettingInstance, field: 'baron')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: pointSettingInstance, field: 'cs', 'error')} required">
	<label for="cs">
		<g:message code="pointSetting.cs.label" default="Cs" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cs" value="${fieldValue(bean: pointSettingInstance, field: 'cs')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: pointSettingInstance, field: 'death', 'error')} required">
	<label for="death">
		<g:message code="pointSetting.death.label" default="Death" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="death" value="${fieldValue(bean: pointSettingInstance, field: 'death')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: pointSettingInstance, field: 'dragon', 'error')} required">
	<label for="dragon">
		<g:message code="pointSetting.dragon.label" default="Dragon" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="dragon" value="${fieldValue(bean: pointSettingInstance, field: 'dragon')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: pointSettingInstance, field: 'kill', 'error')} required">
	<label for="kill">
		<g:message code="pointSetting.kill.label" default="Kill" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="kill" value="${fieldValue(bean: pointSettingInstance, field: 'kill')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: pointSettingInstance, field: 'league', 'error')} required">
	<label for="league">
		<g:message code="pointSetting.league.label" default="League" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="league" name="league.id" from="${object.League.list()}" optionKey="id" required="" value="${pointSettingInstance?.league?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pointSettingInstance, field: 'loss', 'error')} required">
	<label for="loss">
		<g:message code="pointSetting.loss.label" default="Loss" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="loss" value="${fieldValue(bean: pointSettingInstance, field: 'loss')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: pointSettingInstance, field: 'position', 'error')} required">
	<label for="position">
		<g:message code="pointSetting.position.label" default="Position" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="position" from="${enums.Positions?.values()}" keys="${enums.Positions.values()*.name()}" required="" value="${pointSettingInstance?.position?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pointSettingInstance, field: 'towerLoss', 'error')} required">
	<label for="towerLoss">
		<g:message code="pointSetting.towerLoss.label" default="Tower Loss" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="towerLoss" value="${fieldValue(bean: pointSettingInstance, field: 'towerLoss')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: pointSettingInstance, field: 'towerWon', 'error')} required">
	<label for="towerWon">
		<g:message code="pointSetting.towerWon.label" default="Tower Won" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="towerWon" value="${fieldValue(bean: pointSettingInstance, field: 'towerWon')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: pointSettingInstance, field: 'win', 'error')} required">
	<label for="win">
		<g:message code="pointSetting.win.label" default="Win" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="win" value="${fieldValue(bean: pointSettingInstance, field: 'win')}" required=""/>
</div>

