<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegistrationForm.aspx.cs" Inherits="ASPNetFundamentals.ControlsAndValidations.RegistrationForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Contact Form</title>
    <style type="text/css">
        #divContainer
        {
            margin-left:auto;
            margin-right:auto;
            width:70%;
            vertical-align:middle;
            border: thin groove;
            font-size: 11px;
            width: 370px;
            font-family: Tahoma, Arial, Helvetica, sans-serif;
            height: 380px;
            background-color: #f0f3fb;
            padding-right: 10px;
            padding-left: 10px;
            padding-bottom: 10px;
            padding-top: 10px;
        }
        .formbutton
        {
            width: 72px;            
            height: 21px;
            border-top: 0px;
            border-bottom: 0px;
            border-left: 0px;
            border-right: 0px;
            padding-top: 3px;
            padding-bottom: 4px;
            padding-left: 0px;
            padding-right: 0px;
            margin: 0px;
            background: url(img/button_72.gif) 0px 0px;
            color: #ffffff;
            vertical-align: middle;
            cursor: pointer;
            font-size: 11px;
            font-family: Tahoma, Arial, Helvetica, sans-serif;
        }
        .col1 { width: 130px; }
        .col2 { width: 200px; }
        .col3 { width: 20px; }
        .lbl { font-weight: bold; }
        .txt { width: 200px; font-size: 11px; font-family: Tahoma; }
        .errorMessage { color: #FF0000; width: 200px; }
        .errorSummary { color: #FF0000; width: 370px; }
    </style>
    <script type="text/javascript">
        function UserMessageClientValidation(objSource, objArgs) {
            var msg = objArgs.Value;
            if (msg.length > 20) {
                objArgs.IsValid = false;
                return;
            }
            else {
                objArgs.IsValid = true;
                return;
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="divContainer">
            <table style="width: 370px;">
                <tr>
                    <td class="col1">
                        <asp:Label ID="lblFullName" runat="server" AssociatedControlID="txtFullName" CssClass="lbl">Full name:</asp:Label>
                    </td>
                    <td class="col2">
                        <asp:TextBox ID="txtFullName" runat="server" CssClass="txt"></asp:TextBox>
                    </td>
                    <td class="col3">
                        <asp:RequiredFieldValidator ID="vldFullName" runat="server" ErrorMessage="Name is required." CssClass="errorMessage"
                            ControlToValidate="txtFullName"><img src="img/error_small.png" /></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="col1">
                        <asp:Label ID="lblAccount" runat="server" AssociatedControlID="txtAccount" CssClass="lbl">Username:</asp:Label>
                    </td>
                    <td class="col2">
                        <asp:TextBox ID="txtAccount" runat="server" CssClass="txt"></asp:TextBox>
                    </td>
                    <td class="col3">
                        <asp:RequiredFieldValidator ID="vldAccount" runat="server" ErrorMessage="Account is required." CssClass="errorMessage"
                            ControlToValidate="txtAccount"><img src="img/error_small.png" /></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="col1">
                        <asp:Label ID="lblPassword" runat="server" AssociatedControlID="txtPassword" CssClass="lbl">Password:</asp:Label>
                    </td>
                    <td class="col2">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="txt"></asp:TextBox>
                    </td>
                    <td class="col3">
                        <asp:RequiredFieldValidator ID="vldPassword" runat="server" ErrorMessage="Password is required." CssClass="errorMessage"
                            ControlToValidate="txtPassword"><img src="img/error_small.png" /></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="col1">
                        <asp:Label ID="lblConfirmPassword" runat="server" AssociatedControlID="txtConfirmPassword" CssClass="lbl">Confirm password:</asp:Label>
                    </td>
                    <td class="col2">
                        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="txt"></asp:TextBox>
                    </td>
                    <td class="col3">
                        <asp:CompareValidator ID="vldConfirmPassword" runat="server" ErrorMessage="Password does not match." CssClass="errorMessage"
                            ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword"><img src="img/error_small.png" /></asp:CompareValidator>
                    </td>
                    <asp:RequiredFieldValidator ID="vldConfirmPasswordRequired" runat="server" ErrorMessage="You must confirm your password." CssClass="errorMessage"
                        ControlToValidate="txtConfirmPassword"></asp:RequiredFieldValidator>
                </tr>
                <tr>
                    <td class="col1">
                        <asp:Label ID="lblEmail" runat="server" AssociatedControlID="txtEmail" CssClass="lbl">E-mail:</asp:Label>
                    </td>
                    <td class="col2">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="txt"></asp:TextBox>
                    </td>
                    <td class="col3">
                        <asp:RegularExpressionValidator ID="vldEmail" runat="server" ErrorMessage="E-mail must have the @ symbol." CssClass="errorMessage"
                            ValidationExpression=".+@.+" ControlToValidate="txtEmail"><img src="img/error_small.png" /></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="col1">
                        <asp:Label ID="lblAge" runat="server" AssociatedControlID="txtAge" CssClass="lbl">Age:</asp:Label>
                    </td>
                    <td class="col2">
                        <asp:TextBox ID="txtAge" runat="server" CssClass="txt"></asp:TextBox>
                    </td>
                    <td class="col3">
                        <asp:RangeValidator ID="vldAge" runat="server" ErrorMessage="Age must be between 18 and 120." CssClass="errorMessage"
                            Type="Integer" MaximumValue="120" MinimumValue="18" ControlToValidate="txtAge"><img src="img/error_small.png" /></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="col1">
                        <asp:Label ID="lblUserMessage" runat="server" AssociatedControlID="txtUserMessage" CssClass="lbl">Message:</asp:Label>
                    </td>
                    <td class="col2">
                        <asp:TextBox ID="txtUserMessage" runat="server" TextMode="MultiLine" Rows="5" CssClass="txt"></asp:TextBox>
                    </td>
                    <td class="col3">
                        <asp:CustomValidator ID="vldUserMessage" runat="server" ErrorMessage="Your message must be less than 20 characters." CssClass="errorMessage"
                            ValidateEmptyText="False" ControlToValidate="txtUserMessage" ClientValidationFunction="UserMessageClientValidation"
                            OnServerValidate="vldUserMessage_ServerValidate"><img src="img/error_small.png" /></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><hr /></td>
                    <td class="col3"></td>
                </tr>
                <tr>
                    <td colspan="2" align="right">
                        <asp:Button ID="cmdRegister" runat="server" CssClass="formbutton" Text="Register"
                            OnClick="cmdRegister_Click"></asp:Button>&nbsp;
                        <asp:Button ID="cmdCancel" runat="server" CssClass="formbutton" Text="Cancel" CausesValidation="False"
                            OnClick="cmdCancel_Click"></asp:Button>                    
                    </td>
                    <td class="col3"></td>
                </tr>
            </table>
            <asp:ValidationSummary id="ValidationSummary1" Runat="server" class="errorSummary" />
            <br />
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </div>
    </div>
    </form>
</body>
</html>
