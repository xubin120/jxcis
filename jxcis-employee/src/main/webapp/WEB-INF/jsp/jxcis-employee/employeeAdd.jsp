<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/init.jsp"%>

<portlet:renderURL var="definePage" />

<portlet:renderURL var="addUrl">
        <portlet:param name="action" value="add" />
</portlet:renderURL>

<aui:form action="${addUrl}">
        <aui:input name="status" type="hidden" value="1"/>
        <aui:input name="isDelete" type="hidden" value="N"/>
        <aui:fieldset>
                <aui:input name="name" autoSize="10" label="姓名"   inlineField="true" placeholder="请输入姓名" required="true" type="text" />
                <aui:input name="number" autoSize="4" label="编号"  inlineField="true" placeholder="请输入编号" required="true" type="text" />
                <aui:input name="qq" autoSize="20" label="QQ"  inlineField="true" placeholder="请输入QQ" required="false" type="text" />
        </aui:fieldset>
</aui:form>

<div class="am-u-sm-12">
                <form id="fm1" class="am-form am-form-horizontal" action="add" method="post" data-am-validator>
                <fieldset>
                    <input type="hidden" name="employeeVO.status" value="1" />
                    <input type="hidden" name="employeeVO.isDelete" value="N" />
                    <div class="am-g am-form-group">
                        <label for="employee-name" class="am-u-sm-2 am-form-label">姓名</label>
                        <div class="am-u-sm-3">
                            <input type="text" class="am-form-field am-input-sm" id="employee-name" name="employeeVO.name" placeholder="请输入姓名" required maxlength="10" tabindex="1">
                        </div>
                        <label class="am-u-sm-1 am-form-label" style="color: red">* 必填</label>
                        <label for="employee-birthday" class="am-u-sm-2 am-form-label">出生年月</label>
                        <div class="am-u-sm-3">
                            <div class="am-input-group am-form-icon date" id="datetimepicker-birthday" >
                                <span class="am-input-group-label add-on"><i class="icon-th am-icon-calendar"></i></span>
                                <input type="text" class="am-form-field am-input-sm" name="employeeVO.birthday" placeholder="请选择出生年月" required readonly>
                            </div>
                        </div>
                        <label class="am-u-sm-1 am-form-label" style="color: red">* 必选</label>
                    </div>
                    
                    <div class="am-g am-form-group">
                        <label for="employee-sex" class="am-u-sm-2 am-form-label">性别</label>
                        <div class="am-u-sm-3">
                            <div class="am-form-group" id="employee-sex">
                                <label class="am-radio am-radio-inline">
                                    <input type="radio" name="employeeVO.sex" id="option1" value="1" required/> 男
                                </label>
                                <label class="am-radio am-radio-inline">
                                    <input type="radio" name="employeeVO.sex" id="option2" value="2" /> 女
                                </label>
                            </div>
                        </div>
                        <label class="am-u-sm-1 am-form-label" style="color: red">* 必选</label>
                        <label for="employee-phone" class="am-u-sm-2 am-form-label">电话</label>
                        <div class="am-u-sm-3">
                            <input type="tel" class="am-form-field am-input-sm" id="employee-phone" name="employeeVO.phone" placeholder="请输入电话" required maxlength="20">
                        </div>
                        <label class="am-u-sm-1 am-form-label" style="color: red">* 必填</label>
                    </div>
                    
                    <div class="am-g am-form-group">
                        <label for="employee-number" class="am-u-sm-2 am-form-label">编号</label>
                        <div class="am-u-sm-3">
                            <input type="text" class="am-form-field am-input-sm" id="employee-number" name="employeeVO.number" placeholder="请输入编号" required maxlength="4">
                        </div>
                        <label class="am-u-sm-1 am-form-label" style="color: red">* 必填</label>
                        <label for="employee-qq" class="am-u-sm-2 am-form-label">QQ</label>
                        <div class="am-u-sm-3">
                            <input type="text" class="am-form-field am-input-sm" id="employee-qq" name="employeeVO.qq" placeholder="请输入QQ号" maxlength="20">
                        </div>
                        <label class="am-u-sm-1 am-form-label">&nbsp;</label>
                    </div>
                    
                    <div class="am-g am-form-group">
                        <label for="employee-email" class="am-u-sm-2 am-form-label">邮箱</label>
                        <div class="am-u-sm-3">
                            <input type="email" class="am-form-field am-input-sm" id="employee-email" name="employeeVO.email" placeholder="请输入邮箱" maxlength="50">
                        </div>
                        <label class="am-u-sm-1 am-form-label">&nbsp;</label>
                        <label for="employee-address" class="am-u-sm-2 am-form-label">住址</label>
                        <div class="am-u-sm-3">
                            <input type="text" class="am-form-field am-input-sm" id="employee-address" name="employeeVO.address" placeholder="请输入住址" maxlength="200">
                        </div>
                        <label class="am-u-sm-1 am-form-label">&nbsp;</label>
                    </div>

                    <div class="am-g am-form-group">
                        <label for="employee-entryDate" class="am-u-sm-2 am-form-label">入职日期</label>
                        <div class="am-u-sm-3">
                            <div class="am-input-group am-form-icon date" id="datetimepicker-entryDate" >
                                <span class="am-input-group-label add-on"><i class="icon-th am-icon-calendar"></i></span>
                                <input type="text" class="am-form-field am-input-sm" name="employeeVO.entryDate" placeholder="请选择入职日期" required readonly>
                            </div>
                        </div>
                        <label class="am-u-sm-1 am-form-label" style="color: red">* 必选</label>
                        <label for="employee-departureDate" class="am-u-sm-2 am-form-label">离职日期</label>
                        <div class="am-u-sm-3">
                            <div class="am-input-group am-form-icon date" id="datetimepicker-departureDate" >
                                <span class="am-input-group-label add-on"><i class="icon-th am-icon-calendar"></i></span>
                                <input type="text" class="am-form-field am-input-sm" name="employeeVO.departureDate" placeholder="请选择离职日期" readonly>
                            </div>
                        </div>
                        <label class="am-u-sm-1 am-form-label">&nbsp;</label>
                    </div>
                    
                    <div class="am-form-group">
                        <label class="am-u-sm-2 am-form-label">&nbsp;</label>
                        <div class="am-u-sm-10">
                            <input type="submit" name="" value="提交保存" class="am-btn am-btn-default">
                        </div>
                    </div>
                </fieldset>
                </form>
            </div>

