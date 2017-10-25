<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="RegFirstStep.aspx.cs" Inherits="Home_Rent_Management_System.HRMS.RegFirstStep" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 246px
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4>
        ভাড়াটিয়া নিবন্ধন ফরম</h4>
    <hr />
    <table style="height:350px; margin-right: 49px;" width="600px">
        <tr>
            <td class="style1">
                <asp:Label ID="LabelDivision" runat="server" Text="বিভাগঃ"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownListDivison" runat="server" Height="30px" Width="280px"  Font-Size="Medium" ForeColor="#006600">
                    <asp:ListItem>ঢাকা</asp:ListItem>
                    <asp:ListItem>ঢাকা </asp:ListItem>
                </asp:DropDownList>
              
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="LabelThana" runat="server" Text="থানাঃ"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownListThana" runat="server" Height="30px" Width="280px"   Font-Size="Medium" ForeColor="#006600">
                    <asp:ListItem></asp:ListItem>       
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>উত্তরখান থানা</asp:ListItem>
                    <asp:ListItem>ওয়ারী থানা</asp:ListItem>
                    <asp:ListItem>ক্যান্টনমেন্ট থানা</asp:ListItem>
                    <asp:ListItem>কোতয়ালী থানা</asp:ListItem>
                    <asp:ListItem>কামরাঙ্গীরচর থানা</asp:ListItem>
                    <asp:ListItem>কাফরুল থানা</asp:ListItem>
                    <asp:ListItem>কলাবাগান থানা</asp:ListItem>
                    <asp:ListItem>কদমতলী থানা</asp:ListItem>
                    <asp:ListItem>খিলগাঁও থানা</asp:ListItem>
                    <asp:ListItem>খিলক্ষেত থানা</asp:ListItem>
                    <asp:ListItem>গেন্ডারিয়া থানা</asp:ListItem>
                    <asp:ListItem>গুলশান থানা</asp:ListItem>
                    <asp:ListItem>চকবাজার থানা</asp:ListItem>
                    <asp:ListItem>ডেমরা থানা</asp:ListItem>
                    <asp:ListItem>তেজগাঁও শিল্পাঞ্চল থানা</asp:ListItem>
                    <asp:ListItem>তেজগাঁও থানা</asp:ListItem>
                    <asp:ListItem>তুরাগ থানা</asp:ListItem>
                    <asp:ListItem>দারুস সালাম থানা</asp:ListItem>
                    <asp:ListItem>দক্ষিণখান থানা</asp:ListItem>
                    <asp:ListItem>ধানমন্ডি থানা</asp:ListItem>
                    <asp:ListItem>নিউমার্কেট থানা</asp:ListItem>
                    <asp:ListItem>পল্লবী থানা</asp:ListItem>
                    <asp:ListItem>পল্টন মডেল থানা</asp:ListItem>
                    <asp:ListItem>বিমানবন্দর থানা</asp:ListItem>
                    <asp:ListItem>বাড্ডা থানা</asp:ListItem>
                    <asp:ListItem>বংশাল থানা</asp:ListItem>
                    <asp:ListItem>বনানী থানা</asp:ListItem>
                    <asp:ListItem>ভাষানটেক থানা</asp:ListItem>
                    <asp:ListItem>ভাটারা থানা</asp:ListItem>
                    <asp:ListItem>মোহাম্মদপুর থানা</asp:ListItem>
                    <asp:ListItem>মিরপুর মডেল থানা</asp:ListItem>
                    <asp:ListItem>মতিঝিল থানা</asp:ListItem>
                    <asp:ListItem>যাত্রাবাড়ী থানা</asp:ListItem>
                    <asp:ListItem>রামপুরা থানা</asp:ListItem>
                    <asp:ListItem>রমনা মডেল থানা</asp:ListItem>
                    <asp:ListItem>রূপনগর থানা</asp:ListItem>
                    <asp:ListItem>লালবাগ থানা</asp:ListItem>
                    <asp:ListItem>শ্যামপুর থানা</asp:ListItem>
                    <asp:ListItem>শেরেবাংলা নগর থানা</asp:ListItem>
                    <asp:ListItem>শাহবাগ থানা</asp:ListItem>
                    <asp:ListItem>শাহ আলী থানা</asp:ListItem>
                    <asp:ListItem>শাহজাহানপুর থানা</asp:ListItem>
                    <asp:ListItem>সূত্রাপুর থানা</asp:ListItem>
                    <asp:ListItem>সবুজবাগ থানা</asp:ListItem>
                    <asp:ListItem>হাজারীবাগ থানা</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="LabelFlat" runat="server" Text="ফ্লাট / তলাঃ"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextFlat" runat="server" Height="30px" Width="280px"  Font-Size="Medium" ForeColor="#006600"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorFlat" ControlToValidate="TextFlat"
                            runat="server" ErrorMessage="Please Inout Password" ForeColor="Red">?</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="LabelHouse" runat="server" Text="বাড়ী / হোল্ডিংঃ"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxHouse" runat="server" Height="30px" Width="280px" Font-Size="Medium" ForeColor="#006600"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorHouse" ControlToValidate="TextBoxHouse"
                            runat="server" ErrorMessage="Please Inout Password" ForeColor="Red">?</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="LabelRood" runat="server" Text="রাস্তাঃ"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextRood" runat="server" Height="30px" Width="280px"  Font-Size="Medium" ForeColor="#006600"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorRood" ControlToValidate="TextRood"
                            runat="server" ErrorMessage="Please Inout Password" ForeColor="Red">?</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="LabelArea" runat="server" Text="এলাকাঃ"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextArea" runat="server" Height="30px" Width="280px"   Font-Size="Medium" ForeColor="#006600"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorArea" ControlToValidate="TextArea"
                            runat="server" ErrorMessage="Please Inout Password" ForeColor="Red">?</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="LabelPostCode" runat="server" Text="পোস্ট কোডঃ"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextPost" runat="server" Height="30px" Width="280px" 
                     Font-Size="Medium" ForeColor="#006600" TextMode="Number"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidatorpost" ControlToValidate="TextPost"
                            runat="server" ErrorMessage="Please Inout Password" ForeColor="Red">?</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
            </td>
            <td>
                <asp:Button ID="ButtonNext" runat="server" Text="পরবর্তী পেজে যান " class="btn btn-primary pull-right"
                    Width="168px" Height="31px" onclick="ButtonNext_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
