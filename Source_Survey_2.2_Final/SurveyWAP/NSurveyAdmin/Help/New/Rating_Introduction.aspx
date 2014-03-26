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
                    Rating / Scaling Tutorial</h2>
                <br />
                <br />
                <hr style="color:#e2e2e2;"/>
                <br />
In this tutorial we will see how to use and setup rating and scaling
features on an existing survey and how rating is reflected in a Survey's
reporting part.<br />
<br />
Rating is a way that allows us to put metrics on a given question by
setting a value for each answer from which a mean will be calculated in
the report. This will allows us to have a quick view on how a question is
evaluated by the respondents.<br />
<br />
Lets take following question as an example :<br />
<br />
How do you find Survey's feature ?<br />
very bad<br />
bad<br />
good<br />
very good<br />
n / a<br />
<br />
By activating rating on the question using the Question%20Editor.html we
can afterward define each answer as a rate part. Each answer that will be
checked as rate part from the Answers%20Editor.html  will have a value
assigned by the Survey's engine based on his position in the question and
a mean rating will be calculated based on these values and the respondent
answers.<br />
<br />
In our example above if we activate rate part the value assigned would be
as follow  :<br />
<br />
How do you find Survey's feature ?<br />
very bad (rating value 1)<br />
bad (rating value 2)<br />
good (rating value 3)<br />
very good (rating value 4)<br />
n / a (rating value 0)<br />
<br />
1 being the worse / lowest value in the rating calculation and 4 being
the best / highest value in the calculating, n/a has a rating value 0
because we didn't check it as a rate part as we dont want to make it part
of the calculation.<br />
<br />
It is not possible to revert the rating values defined by Survey for each
answer eg: very good, good, bad, very bad would results in very good
(rating 1), good (rating 2), bad (rating 3), very bad (rating 4).
Obviously having very bad rated as the best option is not want we want.<br />
<br />
Looking at the rating results in the report graphic above Survey performs<br />
the calculation like this :<br />
3*4<br />
<br />
Once respondents have answered our question Survey's reporting engine
will be able to calculate the mean rating of the question.<br />
<br />
 Tutorial might have been recorded on an earlier version of Survey and
some menu items might not be exactly as there are in the current
distributed version but main functionalities claimed by the tutorial
remains the same.<br />
<br />
Rating%20Tutorial.html<br />
<br />
<a href="https://www.macromedia.com/This" target="_blank">https://www.macromedia.com/This</a> tutorial requires Macromedia Flash.<br />
<br />
<br />
<br />
                <hr style="color:#e2e2e2;"/>
                <br />
                <br />
                <h3>
                    More Information</h3>
                <br />
Rating%20Tutorial.html<br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

