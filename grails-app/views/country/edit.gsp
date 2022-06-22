<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'country.label', default: 'Country')}"/>
    <title><g:message code="default.edit.label" args="[entityName]"/></title>
</head>

<body>
%{--        <a href="#edit-country" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
%{--        <div class="nav" role="navigation">--}%
%{--            <ul>--}%
%{--                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
%{--                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
%{--                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
%{--            </ul>--}%
%{--        </div>--}%
<div id="edit-country" class="content scaffold-edit" role="main">
    <h1>Редактировать страну</h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${this.country}">
        <ul class="errors" role="alert">
            <g:eachError bean="${this.country}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                        error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>

    <div class="card m-3">
        <div class="card-body">
            <g:form resource="${this.country}" method="PUT">
                <g:render template="country_form" model="[country: this.country]"/>
            </g:form>
        </div>
    </div>

</div>
</body>
</html>
