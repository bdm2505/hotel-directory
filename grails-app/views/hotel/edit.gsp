<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Редактировать отель</title>
</head>

<body>
%{--        <a href="#edit-hotel" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
%{--        <div class="nav" role="navigation">--}%
%{--            <ul>--}%
%{--                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
%{--                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
%{--                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
%{--            </ul>--}%
%{--        </div>--}%
<div id="edit-hotel" class="content scaffold-edit" role="main">
    <h1>Редактировать отель</h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <% hotel?.attach() %>
    <g:hasErrors bean="${hotel}">
        <ul class="errors" role="alert">
            <g:eachError bean="${hotel}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                        error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <div class="card m-3">
        <div class="card-body">
            <g:form resource="${hotel}" method="PUT">
                <g:render template="hotel_form"
                          model="[hotel: hotel, countryList: countryList, country: hotel.country]"/>
            </g:form>
        </div>
    </div>
</div>
</body>
</html>
