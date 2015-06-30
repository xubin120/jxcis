<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/init.jsp"%>

<portlet:renderURL var="definePage" />

<portlet:renderURL var="preAddUrl">
        <portlet:param name="action" value="preAdd" />
</portlet:renderURL>

<!-- content start -->
<div class="am-btn-group am-btn-group-xs">
        <aui:button type="button" value="新增" onClick="preAdd()" />
</div>

<ui:search-container delta="5" emptyResultsMessage="没有符合条件的数据！">
        <ui:search-container-results results="${employeeList}" total="${employeeCount}" />
        <ui:search-container-row className="com.simon.jxcis.employee.vo.EmployeeVO" keyProperty="id" modelVar="employee">
                <ui:search-container-column-text name="姓名" property="name" />
                <ui:search-container-column-text name="编号" value="number" />
                <ui:search-container-column-text name="电话" property="phone" />
                <ui:search-container-column-text name="QQ" property="qq" />
                <ui:search-container-column-text name="邮编" property="email" />
                <ui:search-container-column-text name="状态" property="status" />
                <ui:search-container-column-text name="入职日期" property="entryDate" />
                <ui:search-container-column-text name="离职日期" property="departureDate" />
                <ui:search-container-column-text name="操作">
                        <portlet:actionURL var="employeeEditUrl" name="preEdit">
                                <portlet:param name="jspPage" value="/jsp/employeeEdit.jsp" />
                                <portlet:param name="id" value="${employee.id}" />
                        </portlet:actionURL>
                        <ui:icon image="edit" url="${employeeEditUrl}" />
                        <portlet:actionURL var="employeeDeleteUrl" name="delete">
                                <portlet:param name="id" value="${employee.id}" />
                        </portlet:actionURL>
                        <ui:icon image="delete" url="${employeeDeleteUrl}"></ui:icon>
                </ui:search-container-column-text>
        </ui:search-container-row>

        <ui:search-iterator paginate="<%=true%>" />
</ui:search-container>
<!-- content end -->
<script>
	function preAdd() {
		window.location = "${preAddUrl}";
	}
</script>
