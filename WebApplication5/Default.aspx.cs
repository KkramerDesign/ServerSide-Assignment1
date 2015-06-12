using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnResults_Click(object sender, EventArgs e)
        {         
            //Calculate Wins 
            Decimal wins = 0;

            if (rblWinLoss1.SelectedItem.Value == "Win")
            {
                wins = wins + 1;
            }

            if (rblWinLoss2.SelectedItem.Value == "Win")
            {
                wins = wins + 1;
            }

            if (rblWinLoss3.SelectedItem.Value == "Win")
            {
                wins = wins + 1;
            }

            if (rblWinLoss4.SelectedItem.Value == "Win")
            {
                wins = wins + 1;
            }
            //Display Wins
            lblWins.Text = "Wins:" + " " + wins.ToString();

            //Calculate & Display Losses
            Decimal losses = 4 - wins;
            lblLosses.Text = "Losses:" + " " + losses.ToString();

            //Calculate & Display Winning Percent
            Decimal WinPerc = wins / 4;
            lblPerc.Text = "Winning Percentage:" + " " + WinPerc.ToString();

            //Calculate & Display Points Scored
            Decimal scored = Convert.ToDecimal(txtScore1.Text) +
                             Convert.ToDecimal(txtScore2.Text) +
                             Convert.ToDecimal(txtScore3.Text) +
                             Convert.ToDecimal(txtScore4.Text);
            lblSco.Text = "Points Scored:" + " " + scored.ToString();

            //Calculate & Display Points Allowed
            Decimal allowed = Convert.ToDecimal(txtAllowed1.Text) +
                              Convert.ToDecimal(txtAllowed2.Text) +
                              Convert.ToDecimal(txtAllowed3.Text) +
                              Convert.ToDecimal(txtAllowed4.Text);

            lblAll.Text = "Points Allowed:" + " " + allowed.ToString();

            //Calculate & Display the Difference
            Decimal difference = scored - allowed;
            
            lblDiff.Text = "Point Differential:" + " " + difference.ToString();

            //Calculate & Display Average Number of Spectators
            Decimal Spectators = Convert.ToDecimal(txtSpec1.Text) +
                                 Convert.ToDecimal(txtSpec2.Text) +
                                 Convert.ToDecimal(txtSpec3.Text) +
                                 Convert.ToDecimal(txtSpec4.Text);

            Decimal AvgSpec = Spectators / 4;

            lblAvgAtt.Text = "Average Attendance:" + " " + AvgSpec.ToString();

            //Calculate the Total Attendance

            lblTotAtt.Text = "Total Attendance: " + " " + Spectators.ToString();           

        }
    }
}