﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="HTTP5101_School_System.AddingStudents" %>
<asp:Content ID="AddingStudents" ContentPlaceHolderID="body" runat="server">
    <div id="adding_students" runat="server">
        <h2>Adding student information </h2>
        <div id="sql_debugger" runat="server"></div>
        <div>
            <label for="adding_studentfname">First name:</label> 
            <asp:Textbox runat="server" ID="adding_studentfname" placeholder="John"></asp:Textbox>
            <%/*What if the field is blank?*/ %>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="adding_studentfname" EnableClientScript="true" ErrorMessage="Please enter the student first name"></asp:RequiredFieldValidator>
        </div>
        <div>
            <label for ="adding_studentlname">Last name:</label>      
            <asp:Textbox runat="server" ID="adding_studentlname" placeholder="Smith"></asp:Textbox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="adding_studentlname" EnableClientScript="true" ErrorMessage="Please enter the student last name"></asp:RequiredFieldValidator>
        </div>
        <div>
            <label for="adding_studentnumber">Student Number:</label>
            <asp:Textbox runat="server" ID="adding_studentnumber" placeholder="N1234"></asp:Textbox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="adding_studentnumber" EnableClientScript="true" ErrorMessage="Please enter the student number"></asp:RequiredFieldValidator>
            <%/*What if the user enter the wrong format of student number?*/ %>
            <asp:RegularExpressionValidator runat="server" ControlToValidate="adding_studentnumber" EnableClientScript="true" ErrorMessage="Please enter the right format of student number" ValidationExpression="^N|n[0-9]{4}$"></asp:RegularExpressionValidator>
        </div>
        
        <asp:Button runat="server" text="Add" />
        <div id="Adding_Summary" runat="server" ShowSummary="true"></div>
        <!-- <div id="students_result" class="_table" runat="server">
            <div class="listitem">
                <div class="col6">STUDENT ID</div>
                <div class="col6">FIRST NAME</div>
                <div class="col6">LAST NAME</div>
                <div class="col6">STUDENT NUMBER</div>
                <div class="col6">ENROLMENT DATE</div>
                <div class="col6last">MODIFY</div>     
            </div>            
        </div> -->
    </div>
</asp:Content>
