<%@page pageEncoding="UTF-8" contentType="text/html" trimDirectiveWhitespaces="true"%>
<%@include file="../bundle/initialization.jspf" %>

<bundle:layout page="${bundle.path}/layouts/layout.jsp">
    <bundle:variable name="head">
        <title>${text.escape(kapp.name)} Requests</title>
    </bundle:variable>
    <h3>My Requests</h3>
    <c:set scope="request" var="submissionsList" value="${SubmissionHelper.retrieveRecentSubmissions('Service')}"/>
    <c:import url="${bundle.path}/partials/submissions.jsp" charEncoding="UTF-8"/>
</bundle:layout>