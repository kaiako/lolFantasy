<%@ page import="object.Account" %>



<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="account.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${accountInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="account.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" value="${accountInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="account.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${accountInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'losses', 'error')} required">
	<label for="losses">
		<g:message code="account.losses.label" default="Losses" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="losses" type="number" value="${accountInstance.losses}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'middleName', 'error')} ">
	<label for="middleName">
		<g:message code="account.middleName.label" default="Middle Name" />
		
	</label>
	<g:textField name="middleName" value="${accountInstance?.middleName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'profilePicturePath', 'error')} ">
	<label for="profilePicturePath">
		<g:message code="account.profilePicturePath.label" default="Profile Picture Path" />
		
	</label>
	<g:textField name="profilePicturePath" value="${accountInstance?.profilePicturePath}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="account.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${security.User.list()}" optionKey="id" required="" value="${accountInstance?.user?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'wins', 'error')} required">
	<label for="wins">
		<g:message code="account.wins.label" default="Wins" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="wins" type="number" value="${accountInstance.wins}" required=""/>
</div>

