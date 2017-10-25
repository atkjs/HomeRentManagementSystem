<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Home_Rent_Management_System.HRMS.login" %>
<%@ Register TagPrefix="recaptcha" Namespace="Recaptcha" Assembly="Recaptcha" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-1 col-md-10  default">
                <h3>
                    লগ ইন করতে আপনার Tracking Number টি ব্যবহার করুন
                </h3>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-offset-1 col-md-10 logincontent">
                <h4>
                    লগ ইন
                </h4>
                <table style="height: 350px; margin-right: 49px;" width="600px">
                    <tr>
                        <td>
                            <asp:Label ID="Labellogin" runat="server" Text="Tracing Number:" Font-Names="Book Antiqua"
                                Font-Size="Large" ForeColor="Blue"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxLogin" runat="server" Height="30px" Width="326px" Font-Size="Medium"
                                ForeColor="#006600"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorLogin" ControlToValidate="TextBoxLogin"
                                runat="server" ErrorMessage="Please Inout Password" ForeColor="Red">***</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <recaptcha:recaptchacontrol id="recaptcha" runat="server" theme="blue" publickey="6Lf9GykTAAAAABIUzRLTjcVcaaU7Kexv95RlfnmT"
                                privatekey="6Lf9GykTAAAAANDgxwooVSCv56zIj-8NvWa5Hahv" />
                            <asp:Label ID="Label1" runat="server" Text="" Font-Names="Algerian" 
                                Font-Size="Medium" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <asp:Button ID="ButtonNext" runat="server" Text="লগ ইন  " class="btn btn-primary pull-right"
                                Width="168px" Height="31px" onclick="ButtonNext_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
