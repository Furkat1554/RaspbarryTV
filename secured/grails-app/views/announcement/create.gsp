<!doctype html>
<html>
    <head>
        <meta name="layout" content="template"/>
        <title>Rasp-TV : Post</title>
        <g:set var="entityName" value="${message(code: 'announcement.label', default: 'Announcement')}" />
        <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
    </head>
    <body>
        <a href="#create-pointOfInterest" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-pointOfInterest" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.announcement}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${this.announcement}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                    </g:eachError>
                </ul>
            </g:hasErrors>
            <g:uploadForm action="save">
                <fieldset class="form">
                    <f:all bean="announcement" except="mediaFileUrl, postedDate"/>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:uploadForm>
        </div>
    </body>
</html>