﻿<%@ Page Language="c#" MasterPageFile="~/nsurveyadmin/MsterPageTabs.master" AutoEventWireup="false"
    Inherits="Votations.NSurvey.WebAdmin.HelpFiles" CodeBehind="../default.aspx.cs" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="TableLayoutContainer">
        <tr>
            <td>
                <asp:ImageButton ID="btnBack" ImageUrl="~/Images/index-icon.png" runat="server" CssClass="buttonIndex"
                    PostBackUrl="~/NSurveyAdmin/Help/default.aspx" Visible="True" ToolTip="Back to Helpfiles Index" />
            </td>
        </tr>
        <tr>
            <td class="contentCell" valign="top">
                <br />
                <h2 style="color:#5720C6;">
                    <h2>Insert Question</h2></h2>
                <br />
                <br />
                <hr style="color:#e2e2e2;"/>
                <br />
The insert question page makes it possible to insert a new question into the survey
form. Three types of questions are available :<br />
<br />
* Single%20Question.html<br />
* Matrix%20Question.html<br />
* Static%20Question.html<br />
<br />
Copy Existing Question<br />
Survey has the option to copy an existing question into the current survey
either from another survey already created or from the QL_Introduction.html<br />
<br />
Import XML Question<br />
It is also possible to import an existing question from an Xml file that
was exported using the export feature of the Question%20Editor.html.<br />

<br />

  <br />
<br />
                <hr style="color:#e2e2e2;"/>
                <br />
                <br />
                <h3>
                    More Information</h3>
                <br />
FBT_Introduction.html<br />
QL_Introduction.html<br />
Question%20Editor.html<br />
Matrix%20Question%20Editor.html<br />
Single%20Question.html<br />
Matrix%20Question.html<br />
Static%20Question.html<br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

