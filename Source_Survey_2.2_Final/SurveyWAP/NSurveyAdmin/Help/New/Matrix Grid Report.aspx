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
                    Matrix Grid Report</h2>
                <br />
                <br />
                <hr style="color:#e2e2e2;"/>
                <br />

This report item will show us a matrix view of the results of
Matrix%20Question.html types.<br />
<br />
Edit Free Text Report Item<br />
<br />
* Report Item Title is an optional text we can specifiy that will show
  up on top on the report item.<br />
<br />
* Use Aliases do we want to show question and answers reporting aliases
  instead of showing the question / answer label text.<br />
<br />
* Multiple Items Layout  if our report item supports multiple items
  selections like multiple answers or questions we can display the
  results either vertically or horizontally.<br />
<br />
* Columns Number is the number of columns in which we want to display
  the items inside our report item. <br />
<br />
Filters / Answers Filters<br />
<br />
* Override Report Filters allows us to override the filters that have
  been set at the report level.<br />
<br />
* Filter Start Date is the start date interval on which the results of
  the RI_Introduction.html will be calculated.<br />
<br />
* Filter End Date is the end date interval on which the results of the
  RI_Introduction.html will be calculated.<br />
<br />
* Assign A Filter using the Report%20Filter%20Creation.html we can
  create specific filters. For example if we only want to display the
  results of respondent who have chosen answer B to the question Z.<br />
<br />
* Language Filter we can filter the results of the RI_Introduction.html
  by the language chosen by the respondent.<br />
<br />
  This feature is only available if we have turned on Survey's
  ML_Introduction.html features.<br />
<br />
Extended Filters<br />
The extended filters allow us to filter based on respondents answers. To
learn more about extended filters please read EF_Introduction.html .<br />
<br />
<br />
Report Question(s)<br />
We can select for which matrix's child questions we want to show the
results. Child questions belonging to the same parent matrix questions
will be grouped inside the same table.<br />
<br />
Matrix Properties<br />
The matrix  provide us following information during runtime analysis of  :<br />
<br />
* Answers Total is the total count of answers for the question, if we
  have multiple choices answers the total is a sum of all answers.<br />
<br />
* Individualsis the number of individual respondents who did answer to
  this question, if we have multiple choices answers and a respondent a
  selected more than one answers he will be still counted as one
  respondent.<br />
<br />
* Participants is the total number of respondents who participated in
  the survey.<br />
<br />
* Reach is the percentage of respondents the question has reached. In
  other words its the percentage of respondent who answered the question
  out of the total of survey participants. <br />
<br />
* Rating  is the average rating value for the question based on the
  answer selection types that are marked as rating part.<br />
<br />
  This feature is only available if we have turned on
  Rating_Introduction.html  from the Question%20Editor.html  from and if
  there is a least one selection type answer that is marked as a rate
  part .<br />
<br />
* Grid Rating  is the average rating of all rating of the child
  questions that are displayed in the grid.<br />
<br />
  This feature is only available if we have turned on
  Rating_Introduction.html  from the Question%20Editor.html from and if
  there is a least one selection type answer that is marked as a rate
  part .<br />
<br />

   <br />
<br />
                <hr style="color:#e2e2e2;"/>
                <br />
                <br />
                <h3>
                    More Information</h3>
                <br />
HowToReport_Introduction.html<br />
RI_Introduction.html<br />
Insert%20Report%20Item.html<br />
Report%20Item%20Editor.html<br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

