<%@ page import="object.Team" %>



<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'account', 'error')} required">
	<label for="account">
		<g:message code="team.account.label" default="Account" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="account" name="account.id" from="${object.Account.list()}" optionKey="id" required="" value="${teamInstance?.account?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'league', 'error')} required">
	<label for="league">
		<g:message code="team.league.label" default="League" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="league" name="league.id" from="${object.League.list()}" optionKey="id" required="" value="${teamInstance?.league?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'losses', 'error')} required">
	<label for="losses">
		<g:message code="team.losses.label" default="Losses" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="losses" type="number" value="${teamInstance.losses}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="team.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${teamInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'rank', 'error')} required">
	<label for="rank">
		<g:message code="team.rank.label" default="Rank" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="rank" type="number" value="${teamInstance.rank}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'wins', 'error')} required">
	<label for="wins">
		<g:message code="team.wins.label" default="Wins" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="wins" type="number" value="${teamInstance.wins}" required=""/>
</div>

