namespace Votations.NSurvey.Security
{
    using Microsoft.VisualBasic;
    using System;
    using System.Collections.Specialized;
    using System.Runtime.CompilerServices;
    using System.Web;
    using System.Web.UI;
    using System.Web.UI.WebControls;
    using Votations.NSurvey.BusinessRules;
    using Votations.NSurvey.Data;
    using Votations.NSurvey.DataAccess;
    using Votations.NSurvey.Resources;

    /// <summary>
    /// Add in that handles the IP security 
    /// to check if an IP has already taken
    /// a survey or not.
    /// </summary>
    public class IPWebSecurityAddIn : IWebSecurityAddIn
    {
        private int _addInDbId;
        private Table _adminTable;
        private string _description;
        private bool _disabled;
        private TextBox _expiresTextBox;
        private string _languageCode;
        private int _order;
        private int _surveyId;
        private StateBag _viewState;

        public event UserAuthenticatedEventHandler UserAuthenticated;

        protected virtual bool checkIP()
        {
            string voterIP = (HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"] != null) ? HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"] : HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"];
            return !new Voters().CheckIfVoterIPExists(this.SurveyId, voterIP);
        }

        /// <summary>
        /// Can return keys/values of the custom 
        /// stored data during the ProcessVoterData. 
        /// At this time these data are retrieved to
        /// be shown in individual reports and for results export
        /// </summary>
        public NameValueCollection GetAddInVoterData(int voterId)
        {
            return null;
        }

        /// <summary>
        /// Must create and return the control 
        /// that will show the administration interface
        /// If none is available returns null
        /// </summary>
        public Control GetAdministrationInterface(Style controlStyle)
        {
            this._adminTable = new Table();
            this._adminTable.ControlStyle.CopyFrom(controlStyle);
            this._adminTable.Width = Unit.Pixel(220);
            TableCell cell = new TableCell();
            TableRow row = new TableRow();
            this._expiresTextBox = new TextBox();
            Button child = new Button();
            Label label = new Label();
            Label label2 = new Label();
            label.ControlStyle.Font.Bold = true;
            label.Text = ResourceManager.GetString("IPExpiresLabel", this.LanguageCode);
            label2.Text = ResourceManager.GetString("MinutesInfo", this.LanguageCode);
            child.Text = ResourceManager.GetString("ApplyChangesButton", this.LanguageCode);
            child.Click += new EventHandler(this.OnClick);
            cell.Controls.Add(label);
            row.Cells.Add(cell);
            cell = new TableCell();
            this._expiresTextBox.Columns = 2;
            this._expiresTextBox.Text = new Surveys().GetIPExpiration(this.SurveyId).ToString();
            cell.Controls.Add(this._expiresTextBox);
            cell.Controls.Add(label2);
            row.Cells.Add(cell);
            this._adminTable.Rows.Add(row);
            row = new TableRow();
            cell = new TableCell();
            cell.ColumnSpan = 2;
            cell.Controls.Add(child);
            row.Cells.Add(cell);
            this._adminTable.Rows.Add(row);
            return this._adminTable;
        }

        /// <summary>
        /// Must create and return the control 
        /// that will show the logon interface.
        /// If none is available returns null
        /// </summary>
        public Control GetLoginInterface(Style controlStyle)
        {
            return null;
        }

        /// <summary>
        /// Method called once an addin has been added to a survey
        /// Can be used to set default values, settings for the addin
        /// </summary>
        public void InitOnSurveyAddition()
        {
            new Survey().UpdateIPExpiration(this.SurveyId, 0x5a0);
        }

        /// <summary>
        /// Check if the current user has given
        /// the correct credentials
        /// </summary>
        public bool IsAuthenticated()
        {
            return this.checkIP();
        }

        protected virtual void OnClick(object sender, EventArgs e)
        {
            if (Information.IsNumeric(this._expiresTextBox.Text))
            {
                new Survey().UpdateIPExpiration(this.SurveyId, int.Parse(this._expiresTextBox.Text));
            }
            else
            {
                TableCell cell = new TableCell();
                TableRow row = new TableRow();
                cell.Text = ResourceManager.GetString("InvalidIPExpireTime", this.LanguageCode);
                cell.ColumnSpan = 2;
                row.Cells.Add(cell);
                this._adminTable.Rows.AddAt(0, row);
            }
        }

        /// <summary>
        /// Method to handle voter data once it has been stored in the database
        /// </summary>
        /// <param name="voter">Voter information as saved in the database and its answers</param>
        public void ProcessVoterData(VoterAnswersData voter)
        {
        }

        /// <summary>
        /// Method called once an addin has been remove from a survey
        /// Can be used to remove useless settings for the addin
        /// </summary>
        public void UnInitOnSurveyRemoval()
        {
            new Survey().UpdateIPExpiration(this.SurveyId, 0);
        }

        public int AddInDbId
        {
            get
            {
                return this._addInDbId;
            }
            set
            {
                this._addInDbId = value;
            }
        }

        public string Description
        {
            get
            {
                return this._description;
            }
            set
            {
                this._description = value;
            }
        }

        public bool Disabled
        {
            get
            {
                return this._disabled;
            }
            set
            {
                this._disabled = value;
            }
        }

        /// <summary>
        /// Contains the current user language
        /// choice in a multi-language survey
        /// </summary>
        public string LanguageCode
        {
            get
            {
                return this._languageCode;
            }
            set
            {
                this._languageCode = value;
            }
        }

        public int Order
        {
            get
            {
                return this._order;
            }
            set
            {
                this._order = value;
            }
        }

        public int SurveyId
        {
            get
            {
                return this._surveyId;
            }
            set
            {
                this._surveyId = value;
            }
        }

        public StateBag ViewState
        {
            get
            {
                return this._viewState;
            }
            set
            {
                this._viewState = value;
            }
        }
    }
}

