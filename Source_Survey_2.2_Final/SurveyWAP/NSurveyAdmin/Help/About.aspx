﻿<%@ Page Language="c#" MasterPageFile="~/nsurveyadmin/MsterPageTabs.master" AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.HelpFiles" Codebehind="default.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="TableLayoutContainer">
        <tr>
            <td>
                <asp:ImageButton ID="btnBack" ImageUrl="~/Images/index-icon.png" runat="server" CssClass="buttonIndex"
                    PostBackUrl="~/NSurveyAdmin/Help/default.aspx#Introduction" Visible="True" ToolTip="Back to Helpfiles Index" />
            </td>
        </tr>
      <tr>
        <td class="contentCell" valign="top">
            <br />
            <h2 style="color:#5720C6;">About the Survey&trade; Project</h2><br />
            <br />
            <hr style="color:#E2E2E2;" />
            <br />
            The Survey&trade; Project is a group of inspired volunteers willing to spend time and effort to create free open source survey software for the web and share knowledge and creative experiences along the way.
            <br /><br />
            The Survey&trade; Project tool is a free, open source webapplication that is used to create webbased
            surveys and (data entry) forms to gather information and feedback online from customers, employees,
            friends or website visitors and export or analyze the results through
            integrated reporting tools.<br />
            <br />
            Once installed Survey&trade; Project does not require any special technical knowledge to be used. The application is written in 
            C# and based on the Microsoft .NET framework. Survey&trade; Project makes use of the latest technologies available.
            <br />
            <br />
            Some key features of the tool are:<br />
            <br />
            * A powerful form builder<br />
            * Web &amp; Email distribution<br />
            * WYSIWYG editors<br />
            * Multiple answer types from selection to complex field types<br />
            * Multiple questions types including matrix type questions<br />
            * An easy to use report and results analysis builder<br />
            * Unique results filtering capabilities<br />
            * Multi-languages surveys<br />
            * Rating / scaling options<br />
            * Branching features<br />
            * Answer piping<br />
            * Token based security<br />
            * Import/ Export options<br />
            <br />
            For a complete list of features go to the Survey&trade; Project Communitysite at
            <a href="http://www.surveyproject.org/" target="_blank">http://www.surveyproject.org/</a>. This is where experiences and questions are shared 
            with the Community and other SP&trade; users.<br />
            <br />
            We hope you will make good use of the application and appreciate its many features,<br /><br />
            <b>The Survey&trade; Project Team</b><br />
                    </td>
        </tr>
                
    </table>
</asp:Content>