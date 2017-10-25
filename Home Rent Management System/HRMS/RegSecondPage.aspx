<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="RegSecondPage.aspx.cs" Inherits="Home_Rent_Management_System.HRMS.RegSecondPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4>
        ভাড়াটিয়া নিবন্ধন ফরম</h4>
    <hr />
    <table style="height: 500px" width="600px">
        <tr>
            <td>
                <asp:Label ID="LabelName" runat="server" Text="ভাড়াটিয়া / বাড়ীওয়ালাঃ "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextName" runat="server" Height="30px" Width="280px" Font-Size="Medium"
                    ForeColor="#006600"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" ControlToValidate="TextName"
                            runat="server" ErrorMessage="Please Inout Password" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LabelFatherN" runat="server" Text="পিতার নামঃ "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextFather" runat="server" Height="30px" Width="280px" Font-Size="Medium"
                    ForeColor="#006600"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LabelDb" runat="server" Text="জন্ম তারিখঃ "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextDb" runat="server" Height="30px" Width="280px" Font-Size="Medium"
                    ForeColor="#006600" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorDb" ControlToValidate="TextDb"
                            runat="server" ErrorMessage="Please Inout Password" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Labelemployee" runat="server" Text="পেশাঃ   "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextEmploye" runat="server" Height="30px" Width="280px" Font-Size="Medium"
                    ForeColor="#006600"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LabelEducation" runat="server" Text="শিক্ষাগত যোগ্যতাঃ"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextEducation" runat="server" Height="30px" Width="280px" Font-Size="Medium"
                    ForeColor="#006600"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LabelMobile" runat="server" Text="মোবাইল নাম্বারঃ"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextMobile" runat="server" Height="30px" Width="280px" Font-Size="Medium" AutoPostBack="true" OnTextChanged="txtPhone_changed"
                    ForeColor="#006600" TextMode="Phone"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextMobile"
                            runat="server" ErrorMessage="Please Inout Password" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LabelEmail" runat="server" Text="ইমেইল আইডিঃ"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextEmail" runat="server" Height="30px" Width="280px" Font-Size="Medium"
                    ForeColor="#006600" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextEmail"
                            runat="server" ErrorMessage="Please Inout Password" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LabelNational" runat="server" Text="জাতীয় পরিচয় পত্রের নাম্বারঃ"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextNational" runat="server" Height="30px" Width="280px" Font-Size="Medium"
                    ForeColor="#006600" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextNational"
                            runat="server" ErrorMessage="Please Inout Password" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LabelReligion" runat="server" Text="ধর্মঃ"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownReligion" runat="server" Height="30px" Width="280px"
                    Font-Size="Medium" ForeColor="#006600">
                    <asp:ListItem>মুসলিম</asp:ListItem>
                    <asp:ListItem>হিন্দু</asp:ListItem>
                    <asp:ListItem>খ্রিস্টান</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LabelAddress" runat="server" Text="স্থায়ী টিকানাঃ"></asp:Label>&nbsp
                &nbsp &nbsp
            </td>
            <td>
                <asp:TextBox ID="TextAddress" runat="server" TextMode="MultiLine" Height="30px" Width="280px"
                    Font-Size="Medium" ForeColor="#006600"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LabelMarridStatus" runat="server" Text="বৈবাহিক অবস্থাঃ "></asp:Label>
            </td>
            <td>
                <asp:RadioButton ID="RadioButtonMarid" runat="server" Text="বিবাহিত" GroupName="maridstatus" />
                <asp:RadioButton ID="RadioButtonUnmarid" runat="server" Text="অবিবাহিত" GroupName="maridstatus" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LabelEmployeeA" runat="server" Text="কর্ম স্থলের টিকানাঃ"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextEmployeeA" runat="server" Height="30px" Width="280px" Font-Size="Medium"
                    ForeColor="#006600" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                
            </td>
            <td>
                <asp:Button ID="ButtonNext" runat="server" Text="পরবর্তী পেজে যান >>" class="btn btn-primary pull-right"
                    Width="168px" Height="31px" onclick="ButtonNext_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
