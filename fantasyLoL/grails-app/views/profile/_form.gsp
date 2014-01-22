<%@ page import="object.Profile" %>



<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'fileName', 'error')} ">
	<label for="fileName">
		<g:message code="profile.fileName.label" default="File Name" />
		
	</label>
	<g:textField name="fileName" value="${profileInstance?.fileName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'profileDir', 'error')} ">
	<label for="profileDir">
		<g:message code="profile.profileDir.label" default="Profile Dir" />
		
	</label>
	<g:textField name="profileDir" value="${profileInstance?.profileDir}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'teamDir', 'error')} ">
	<label for="teamDir">
		<g:message code="profile.teamDir.label" default="Team Dir" />
		
	</label>
	<g:textField name="teamDir" value="${profileInstance?.teamDir}"/>
</div>

