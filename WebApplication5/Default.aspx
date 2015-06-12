<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" MasterPageFile="Site1.Master"Inherits="WebApplication5.Default" %>  

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 class="col-lg-12">Game Keeper</h1>
    <h6 class="col-sm-12" id="req">All Fields Are Required.</h6>
    <div class="col-sm-3"> <!-- Start of Game 1 -->
       
   
    <div class="panel panel-success">
      <div class="panel-heading">
        <h3 class="panel-title">Game 1</h3>
      </div>
      <div class="panel-body">
            
        <fieldset>
            <asp:RadioButtonList ID="rblWinLoss1" runat="server">
                <asp:ListItem Value="Win" Text="Win"/>
                <asp:ListItem Value="Loss" Text="Loss"/>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator runat="server" ErrorMessage="Please choose a bubble!" CssClass="label label-danger" ControlToValidate="rblWinLoss1"></asp:RequiredFieldValidator> <!--Validation-->
        </fieldset>

        <fieldset>
            <asp:Label ID="lblScore1" runat="server">Scored:</asp:Label>
            <asp:TextBox ID="txtScore1" runat="server" Height="26px" Width="90px"></asp:TextBox>
            <asp:RangeValidator runat="server" ErrorMessage="Enter a number between 1 and 100"
                ControlToValidate="txtScore1" CssClass="label label-danger"
                MinimumValue="1" MaximumValue="100" Type="Integer"
                Display="Dynamic"></asp:RangeValidator>
            <asp:RequiredFieldValidator ControlToValidate="txtScore1" runat="server" ErrorMessage="Field cannot be empty" CssClass="label label-danger"></asp:RequiredFieldValidator><!--Validation-->
        </fieldset>

        <fieldset>
            <asp:Label ID="lblAllowed1" runat="server">Allowed:</asp:Label>
            <asp:TextBox ID="txtAllowed1" runat="server" Height="26px" Width="90px"></asp:TextBox>
            <asp:RangeValidator runat="server" ErrorMessage="Enter a number between 1 and 100"
                ControlToValidate="txtAllowed1" CssClass="label label-danger"
                MinimumValue="1" MaximumValue="100" Type="Integer"
                Display="Dynamic"></asp:RangeValidator>
            <asp:CompareValidator runat="server" ErrorMessage="Cannot be a tie" CssClass="label label-danger" ControlToCompare="txtAllowed1" ControlToValidate="txtScore1" Operator="NotEqual"></asp:CompareValidator>
            <asp:RequiredFieldValidator ControlToValidate="txtAllowed1" runat="server" ErrorMessage="Field cannot be empty" CssClass="label label-danger"></asp:RequiredFieldValidator><!--Validation-->
            
        </fieldset>
        <fieldset>
            <asp:Label ID="lblSpec1" runat="server">Spectators:</asp:Label>
            <asp:TextBox ID="txtSpec1" runat="server" Height="26px" Width="90px"></asp:TextBox>
            <asp:RangeValidator runat="server" ErrorMessage="Enter a number between 1 and 9999999"
                ControlToValidate="txtSpec1" CssClass="label label-danger"
                MinimumValue="1" MaximumValue="9999999" Type="Integer"
                Display="Dynamic"></asp:RangeValidator>
            <asp:RequiredFieldValidator ControlToValidate="txtSpec1" runat="server" ErrorMessage="Field cannot be empty" CssClass="label label-danger"></asp:RequiredFieldValidator><!--Validation-->
        </fieldset>
    </div> <!--End of Game 1-->
    </div>
    </div>
    



    <div class="col-sm-3">  <!-- Start of Game 2 -->
     <div class="panel panel-success">
      <div class="panel-heading">
        <h3 class="panel-title">Game 2</h3>
      </div>
      <div class="panel-body">
        <fieldset>
            <asp:RadioButtonList ID="rblWinLoss2" runat="server">
                <asp:ListItem Value="Win" Text="Win"/>
                <asp:ListItem  Value="Loss" Text="Loss"/>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator runat="server" 
                ErrorMessage="Please choose a bubble!" CssClass="label label-danger" 
                ControlToValidate="rblWinLoss2"></asp:RequiredFieldValidator><!--Validation-->  
        </fieldset>
        <fieldset>
            <asp:Label ID="lblScore2" runat="server">Scored:</asp:Label>
            <asp:TextBox ID="txtScore2" runat="server" Height="26px" Width="90px"></asp:TextBox>
            <asp:RangeValidator runat="server" ErrorMessage="Enter a number between 1 and 100"
                ControlToValidate="txtScore2" CssClass="label label-danger"
                MinimumValue="1" MaximumValue="100" Type="Integer"
                Display="Dynamic"></asp:RangeValidator>
            <asp:RequiredFieldValidator ControlToValidate="txtScore2" runat="server" ErrorMessage="Field cannot be empty" CssClass="label label-danger"></asp:RequiredFieldValidator><!--Validation-->  
        </fieldset>
        <fieldset>
            <asp:Label ID="lblAllowed2" runat="server">Allowed:</asp:Label>
            <asp:TextBox ID="txtAllowed2" runat="server" Height="26px" Width="90px"></asp:TextBox>
            <asp:RangeValidator runat="server" ErrorMessage="Enter a number between 1 and 100"
                ControlToValidate="txtAllowed2" CssClass="label label-danger"
                MinimumValue="1" MaximumValue="100" Type="Integer"
                Display="Dynamic"></asp:RangeValidator>
            <asp:CompareValidator runat="server" ErrorMessage="Cannot be a tie" CssClass="label label-danger" ControlToCompare="txtAllowed2" ControlToValidate="txtScore2" Operator="NotEqual"></asp:CompareValidator>
            <asp:RequiredFieldValidator ControlToValidate="txtAllowed2" runat="server" ErrorMessage="Field cannot be empty" CssClass="label label-danger"></asp:RequiredFieldValidator><!--Validation-->               
        </fieldset>
        <fieldset>
            <asp:Label ID="lblSpec2" runat="server">Spectators:</asp:Label>
            <asp:TextBox ID="txtSpec2" runat="server" Height="26px" Width="90px"></asp:TextBox>
            <asp:RangeValidator runat="server" ErrorMessage="Enter a number between 1 and 9999999"
                ControlToValidate="txtSpec2" CssClass="label label-danger"
                MinimumValue="1" MaximumValue="9999999" Type="Integer"
                Display="Dynamic"></asp:RangeValidator>
            <asp:RequiredFieldValidator ControlToValidate="txtSpec2" runat="server" ErrorMessage="Field cannot be empty" CssClass="label label-danger"></asp:RequiredFieldValidator><!--Validation-->  
        </fieldset>
    </div> <!--End of Game 2-->
    </div>
    </div>




   <div class="col-sm-3"> <!-- Start of Game 3 -->
        <div class="panel panel-success">
          <div class="panel-heading">
          <h3 class="panel-title">Game 3</h3>
          </div>
          <div class="panel-body">
        <fieldset>
            <asp:RadioButtonList ID="rblWinLoss3" runat="server">
                <asp:ListItem Value="Win" Text="Win"/>
                <asp:ListItem Value="Loss" Text="Loss"/>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator runat="server" 
                ErrorMessage="Please choose a bubble!" CssClass="label label-danger" 
                ControlToValidate="rblWinLoss3"></asp:RequiredFieldValidator><!--Validation-->  
        </fieldset>
        <fieldset>
            <asp:Label ID="lblScore3" runat="server">Scored:</asp:Label>
            <asp:TextBox ID="txtScore3" runat="server" Height="26px" Width="90px"></asp:TextBox>
            <asp:RangeValidator runat="server" ErrorMessage="Enter a number between 1 and 100"
                ControlToValidate="txtScore3" CssClass="label label-danger"
                MinimumValue="1" MaximumValue="100" Type="Integer"
                Display="Dynamic"></asp:RangeValidator>
            <asp:RequiredFieldValidator ControlToValidate="txtScore3" runat="server" ErrorMessage="Field cannot be empty" CssClass="label label-danger"></asp:RequiredFieldValidator><!--Validation-->  
        </fieldset>
        <fieldset>
            <asp:Label ID="lblAllowed3" runat="server">Allowed:</asp:Label>
            <asp:TextBox ID="txtAllowed3" runat="server" Height="26px" Width="90px"></asp:TextBox>
            <asp:RangeValidator runat="server" ErrorMessage="Enter a number between 1 and 100"
                ControlToValidate="txtAllowed3" CssClass="label label-danger"
                MinimumValue="1" MaximumValue="100" Type="Integer"
                Display="Dynamic"></asp:RangeValidator><!--Validation-->  
            <asp:CompareValidator runat="server" ErrorMessage="Cannot be a tie" CssClass="label label-danger" ControlToCompare="txtAllowed3" ControlToValidate="txtScore3" Operator="NotEqual"></asp:CompareValidator>
            <asp:RequiredFieldValidator ControlToValidate="txtAllowed3" runat="server" ErrorMessage="Field cannot be empty" CssClass="label label-danger"></asp:RequiredFieldValidator><!--Validation-->
        </fieldset>
        <fieldset>
            <asp:Label ID="lblSpec3" runat="server">Spectators:</asp:Label>
            <asp:TextBox ID="txtSpec3" runat="server" Height="26px" Width="90px"></asp:TextBox>
            <asp:RangeValidator runat="server" ErrorMessage="Enter a number between 1 and 9999999"
                ControlToValidate="txtSpec3" CssClass="label label-danger"
                MinimumValue="1" MaximumValue="9999999" Type="Integer"
                Display="Dynamic"></asp:RangeValidator>
            <asp:RequiredFieldValidator ControlToValidate="txtSpec3" runat="server" ErrorMessage="Field cannot be empty" CssClass="label label-danger"></asp:RequiredFieldValidator><!--Validation-->  
        </fieldset>
    </div> <!--End of Game 3-->
    </div>
    </div>
    



    <div class="col-sm-3"> <!-- Start of Game 4 -->
      <div class="panel panel-success">
      <div class="panel-heading">
        <h3 class="panel-title">Game 4</h3>
      </div>
      <div class="panel-body">       
          
             <fieldset>
            <asp:RadioButtonList ID="rblWinLoss4" runat="server">
                <asp:ListItem Value="Win" Text="Win"/>
                <asp:ListItem  Value="Loss" Text="Loss"/>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator runat="server" 
                ErrorMessage="Please choose a bubble!" CssClass="label label-danger" 
                ControlToValidate="rblWinLoss4"></asp:RequiredFieldValidator><!--Validation-->  
        </fieldset>
        <fieldset>
            <asp:Label ID="lblScore4" runat="server">Scored:</asp:Label>
            <asp:TextBox ID="txtScore4" runat="server" Height="26px" Width="90px"></asp:TextBox>
            <asp:RangeValidator runat="server" ErrorMessage="Enter a number between 1 and 100"
                ControlToValidate="txtScore4" CssClass="label label-danger"
                MinimumValue="1" MaximumValue="100" Type="Integer"
                Display="Dynamic"></asp:RangeValidator>
            <asp:RequiredFieldValidator ControlToValidate="txtScore4" runat="server" ErrorMessage="Field cannot be empty" CssClass="label label-danger"></asp:RequiredFieldValidator><!--Validation-->  
        </fieldset>
        <fieldset>
            <asp:Label ID="lblAllowed4" runat="server">Allowed:</asp:Label>
            <asp:TextBox ID="txtAllowed4" runat="server" Height="26px" Width="90px"></asp:TextBox>
            <asp:RangeValidator runat="server" ErrorMessage="Enter a number between 1 and 100"
                ControlToValidate="txtAllowed4" CssClass="label label-danger"
                MinimumValue="1" MaximumValue="100" Type="Integer"
                Display="Dynamic"></asp:RangeValidator>
            <asp:CompareValidator runat="server" ErrorMessage="Cannot be a tie" CssClass="label label-danger" ControlToCompare="txtAllowed4" ControlToValidate="txtScore4" Operator="NotEqual" ></asp:CompareValidator>
            <asp:RequiredFieldValidator ControlToValidate="txtAllowed4" runat="server" ErrorMessage="Field cannot be empty" CssClass="label label-danger"></asp:RequiredFieldValidator><!--Validation-->
        </fieldset>
        <fieldset>
            <asp:Label ID="lblSpec4" runat="server">Spectators:</asp:Label>
            <asp:TextBox ID="txtSpec4" runat="server" Height="26px" Width="90px"></asp:TextBox>
            <asp:RangeValidator runat="server" ErrorMessage="Enter a number between 1 and 9999999"
                ControlToValidate="txtSpec4" CssClass="label label-danger"
                MinimumValue="1" MaximumValue="9999999" Type="Integer"
                Display="Dynamic"></asp:RangeValidator>
            <asp:RequiredFieldValidator ControlToValidate="txtSpec4" runat="server" ErrorMessage="Field cannot be empty" CssClass="label label-danger"></asp:RequiredFieldValidator><!--Validation-->  
        </fieldset>
    </div> <!--End of Game 4-->
    </div>
        </div>

        <div class="row">
        <div class="col-sm-12" id="btnctr">
        <asp:Button ID="btnResults" Text="Summary" runat="server" OnClick="btnResults_Click" />
        </div>
        </div>
    <div>
    </div>

<div class="panel panel-success">
      <div class="panel-heading">
        <h3 class="panel-title">Results:</h3>
      </div>
      <div class="panel-body">

    <asp:Label ID="lblWins" Text="Wins:" runat="server" /> <br />

    <asp:Label ID="lblLosses" Text="Losses:" runat="server" /><br />

    <asp:Label ID="lblPerc" Text="Winning Percentage:" runat="server" /><br />

    <asp:Label ID="lblSco" Text="Points Scored:" runat="server" /><br />

    <asp:Label ID="lblAll" Text="Points Allowed:" runat="server" /><br />

    <asp:Label ID="lblDiff" Text="Points Differential:" runat="server" /><br />

    <asp:Label ID="lblTotAtt" Text="Total Attendance:" runat="server" /><br />

    <asp:Label ID="lblAvgAtt" Text="Average Attendance:" runat="server" /><br />
          </div>
    </div>
</asp:Content>



