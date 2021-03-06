﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Wap.Master" AutoEventWireup="true"
    CodeBehind="SurveySettings.aspx.cs" Inherits="Votations.NSurvey.WebAdmin.NSurveyAdmin.SurveySettings" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        $(function () {
            var obj = {
                select: function(event, ui) { 
                    $("#tabindex").val(ui.index); 
                    __doPostBack();
                },

                selected: <%= selectedTabIndex %>
            };

            $("#tabs").tabs(obj);
        });
    </script>
    <input type="hidden" id="tabindex" name="tabindex" value="<%= selectedTabIndex %>" />
    <div id="usersTabEvents" style="display: none" runat="server" onclick="foo" />
    <div id="tabs" style="overflow:auto; min-height:740px;">
        <ul>
            <li><a href="#tabs-1">
                <%=GetPageResource("SurveyInfo")%></a></li>
            <li><a href="#tabs-2">
                <%=GetPageResource("SurveyInfoMultiLanguage")%></a></li>
            <li><a href="#tabs-3">
                <%=GetPageResource("SurveyInfoCompletion")%></a></li>
            <li><a href="#tabs-4">
                <%=GetPageResource("SurveyInfoLayout")%></a></li>
        </ul>
        
    </div>


                 
</asp:Content>
