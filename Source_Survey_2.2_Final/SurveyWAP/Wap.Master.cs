﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

using Votations.NSurvey.Data;
using Votations.NSurvey.WebAdmin;
using Votations.NSurvey.WebAdmin.UserControls;
using Votations.NSurvey.Web.Security;

namespace Votations.NSurvey
{
    public partial class Wap : System.Web.UI.MasterPage
    {
        public bool isTreeStale {  set{this.surveyTree1.isTreeStale=true;} }

        public void RebuildTree()
        {
            this.surveyTree1.RebuildTree();
        }


        protected void Page_Init(object sender, System.EventArgs e)
        {

            Response.Buffer = true;
            Response.ExpiresAbsolute = DateTime.Now.AddDays(-1d);
            Response.Expires = -1500;
            Response.CacheControl = "no-cache";
            Response.Cache.SetCacheability(HttpCacheability.NoCache);


            //Ie 8 and lower have an issue with the "Cache-Control no-cache" and "Cache-Control store-cache" headers.
            //The work around is allowing private caching only but immediately expire it.
            if ((Request.Browser.Browser.ToLower() == "ie") && (Request.Browser.MajorVersion < 9))
            {
                Response.Cache.SetCacheability(HttpCacheability.Private);
                Response.Cache.SetMaxAge(TimeSpan.FromMilliseconds(1));
            }
            else
            {
                Response.Cache.SetCacheability(HttpCacheability.NoCache);//IE set to not cache
                Response.Cache.SetNoStore();//Firefox/Chrome not to cache
                Response.Cache.SetExpires(DateTime.UtcNow); //for safe measure expire it immediately
            }



            Page.Header.Controls.Add(new LiteralControl(Environment.NewLine));
            HtmlGenericControl css = new HtmlGenericControl("link");            
            css.Attributes.Add("rel", "stylesheet");
            css.Attributes.Add("type", "text/css");
            css.Attributes.Add("href", ResolveUrl("~/Scripts/css/custom-theme/jquery-ui-1.8.12.custom.css"));            
            Page.Header.Controls.Add(css);

            css = new HtmlGenericControl("link");
            css.Attributes.Add("rel", "stylesheet");
            css.Attributes.Add("type", "text/css");
            css.Attributes.Add("href", ResolveUrl("~/Scripts/Javascript/tooltip/stylesheets/tipsy.css"));
            Page.Header.Controls.Add(css);


            Page.Header.Controls.Add(new LiteralControl(Environment.NewLine));
            HtmlGenericControl javascriptControl = new HtmlGenericControl("script");
            javascriptControl.Attributes.Add("type", "text/Javascript");
            javascriptControl.Attributes.Add("src", ResolveUrl("~/Scripts/js/jquery-1.5.1.min.js"));
            Page.Header.Controls.Add(javascriptControl);
            Page.Header.Controls.Add(new LiteralControl(Environment.NewLine));       

            javascriptControl = new HtmlGenericControl("script");
            javascriptControl.Attributes.Add("type", "text/Javascript");
            javascriptControl.Attributes.Add("src", ResolveUrl("~/Scripts/js/jquery-ui-1.8.12.custom.min.js"));
            Page.Header.Controls.Add(javascriptControl);
            Page.Header.Controls.Add(new LiteralControl(Environment.NewLine));

            if (Request.UserLanguages != null && Request.UserLanguages.Length > 0)
            {
                string lang = Request.UserLanguages[0].ToString().ToLower();
                javascriptControl = new HtmlGenericControl("script");
                javascriptControl.Attributes.Add("type", "text/Javascript");
                javascriptControl.Attributes.Add("src", ResolveUrl(string.Format("~/Scripts/js/jquery.ui.datepicker-{0}.js",lang)));
                Page.Header.Controls.Add(javascriptControl);
                Page.Header.Controls.Add(new LiteralControl(Environment.NewLine));
            }

            javascriptControl = new HtmlGenericControl("script");
            javascriptControl.Attributes.Add("type", "text/Javascript");
            javascriptControl.Attributes.Add("src", ResolveUrl("~/Scripts/js/jquery.fileinput.min.js"));
            Page.Header.Controls.Add(javascriptControl);
            Page.Header.Controls.Add(new LiteralControl(Environment.NewLine));

            javascriptControl = new HtmlGenericControl("script");
            javascriptControl.Attributes.Add("type", "text/Javascript");
            javascriptControl.InnerHtml = "$(document).ready(function() {" + Environment.NewLine + 
                                            "jquerycssmenu.buildmenu('SurveyMenu', MenuArrowImages)" + Environment.NewLine +
                                          "});";
            Page.Header.Controls.Add(javascriptControl);
            Page.Header.Controls.Add(new LiteralControl(Environment.NewLine));


            javascriptControl = new HtmlGenericControl("script");
            javascriptControl.Attributes.Add("type", "text/Javascript");
            javascriptControl.Attributes.Add("src", ResolveUrl("~/Scripts/Javascript/tooltip/javascripts/jquery.tipsy.js"));
            Page.Header.Controls.Add(javascriptControl);
            Page.Header.Controls.Add(new LiteralControl(Environment.NewLine));


       }

        protected void Page_Load(object sender, EventArgs e)
        {

            ViewBanners();
        }

        public void ViewBanners()
        {

            //if (((PageBase)Page).NSurveyUser.Identity.UserId == -1 || !(((PageBase)Page).NSurveyUser.HasRight(NSurveyRights.AccessSurveyList) || ((PageBase)Page).NSurveyUser.Identity.IsAdmin))
            if (((PageBase)Page).NSurveyUser.Identity.UserId == -1 )
            //if(!Page.User.Identity.IsAuthenticated)
            { banners.Visible = true; return; }

            banners.Visible = false;
        }


        public Votations.NSurvey.WebAdmin.UserControls.HeaderControl HeaderControl

        {
            get
            {
                return Headercontrol1;
            }

        }

        public Votations.NSurvey.WebAdmin.NSurveyAdmin.UserControls.LoginBox LoginBox
        {
            get
            {
                return LoginBox1;
            }

        }

    }
}