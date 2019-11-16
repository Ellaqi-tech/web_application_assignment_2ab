﻿<%@ Page Title="Specific" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ListStudents.aspx.cs" Inherits="HTTP5101_School_System.ListStudents" %>

<asp:Content ID="students_list" ContentPlaceHolderID="body" runat="server">
    <h1>Students</h1>
    <div id="student_nav">
        <asp:label for="student_search" runat="server">Search:</asp:label>
        <asp:TextBox ID="student_search" runat="server" placeholder="Search for a student here"></asp:TextBox>
        <asp:Button runat="server" text="Search"/>
        <div id="sql_debugger" runat="server"></div>
        <%
        //todod: search by keyword
        //search by semester selection(?) -- calendar picker before/after? -- range?
        //order by fname lname asc desc
        %>
    </div>
    <div id="students_result" class="_table" runat="server">
        <div class="listitem">
            <div class="col6">STUDENT ID</div>
            <div class="col6">FIRST NAME</div>
            <div class="col6">LAST NAME</div>
            <div class="col6">STUDENT NUMBER</div>
            <div class="col6">ENROLMENT DATE</div>
            <div class="col6last">MODIFY</div>     
        </div>            
    </div> 
</asp:Content>
