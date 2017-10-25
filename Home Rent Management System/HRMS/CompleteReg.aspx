<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="CompleteReg.aspx.cs" Inherits="Home_Rent_Management_System.HRMS.CompleteReg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="container">
        <div class="row">
            <div class="col-md-offset-1 col-md-10  default">
                <h3>
                    ধন্যবাদ রেজিষ্টেশন সফল হয়েছে.........
                </h3>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-offset-1 col-md-10 logincontent" align="center">
            <br />
            <br />
            <br />
               <h4> আপনার Traching Number  হচ্ছে 
                <asp:Label ID="Label1" runat="server" Text="Label" Font-Names="Algerian" 
                    Font-Size="Medium" Font-Underline="True" ForeColor="#FF0066"></asp:Label></h4>
               <p>আপনার Traching Number টি সংরক্ষণ করুন </p>                 
            </div>
        </div>
    </div>
</asp:Content>
