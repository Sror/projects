﻿<%@ Register TagPrefix="uc1" TagName="SurveyListControl" Src="UserControls/SurveyListControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="FooterControl" Src="UserControls/FooterControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="HeaderControl" Src="UserControls/HeaderControl.ascx" %>
<%@ Page language="c#" MasterPageFile="~/Wap.master" AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.AccessDenied" Codebehind="AccessDenied.aspx.cs" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <td 
                style="width: 778px; 
                background-color: #ffffff; 
                height:744px; 
                vertical-align:top;
                border: 1px #aaaaaa solid ;              
               -webkit-border-radius: 7px;
               -moz-border-radius: 7px;
                border-radius: 7px;
                "><br /><br /><br />
                <p align="center">
                    <asp:Label ID="MessageLabel" runat="server" CssClass="WarningMessage" Visible="True"></asp:Label></p>
            </td>
        </tr>
    </table>
</asp:Content>
