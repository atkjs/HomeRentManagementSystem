<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="viewOwn.aspx.cs" Inherits="Home_Rent_Management_System.HRMS.viewOwn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container">
<div class="row">
<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 viewownleft">
    <asp:DataList ID="DataListimage" runat="server">
        <ItemTemplate>
        <h3 align="center">ছবি</h3>
            <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("Image") %>' Height="200px"
                Width="180px" Class="img-circle" />
        </ItemTemplate>
    </asp:DataList>
</div>
<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 viewownmiddle">
<asp:DataList ID="DataList1" runat="server" Width="70%" Height="100%">
    <ItemTemplate>
        <table style="width:100% ; height:70%">
            <tr>
                <td>
                </td>
                <td>
                   <h3> নিজের সম্পর্কে </h3>
                </td>
            </tr>
            <tr>
                <td>
                    নামঃ<asp:Label ID="Label6" runat="server" Text='<%#Eval("Name") %>'></asp:Label>
                </td>
                <td>
                   পিতার নামঃ <asp:Label ID="Label7" runat="server" Text='<%#Eval("FatherName") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                   মোবাইল নাম্বারঃ <asp:Label ID="Label11" runat="server" Text='<%#Eval("Mobile") %>'></asp:Label>
                </td>
                <td>
                   ইমেইল আইডিঃ <asp:Label ID="Label12" runat="server" Text='<%#Eval("Email") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                  শিক্ষাগত যোগ্যতাঃ  <asp:Label ID="Label10" runat="server" Text='<%#Eval("Education") %>'></asp:Label>
                </td>
                <td>
                   জন্ম তারিখঃ <asp:Label ID="Label8" runat="server" Text='<%#Eval("DOB") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    বৈবাহিক অবস্থাঃ<asp:Label ID="Label16" runat="server" Text='<%#Eval("Maridstatus") %>'></asp:Label>
                </td>
                <td>
                   পেশাঃ <asp:Label ID="Label9" runat="server" Text='<%#Eval("Employee") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                  ধর্মঃ  <asp:Label ID="Label14" runat="server" Text='<%#Eval("Religion") %>'></asp:Label>
                </td>
                <td>
                   জাতীয় পরিচয় পত্রের নাম্বারঃ <asp:Label ID="Label13" runat="server" Text='<%#Eval("NationId") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                   স্থায়ী টিকানাঃ <asp:Label ID="Label15" runat="server" Text='<%#Eval("Adress") %>'></asp:Label>
                </td>
            </tr>
        </table>
        <table style="width:100% ; height:20%">
            <tr>
                <td>
                </td>
                <td><h3> বর্তমান বাড়িয়ালা সম্পর্কে  </h3>
                </td>
            </tr>
            <tr>
                <td>
                   বর্তমান বাড়ীয়ালার নামঃ <asp:Label ID="Label18" runat="server" Text='<%#Eval("OwnerName") %>'></asp:Label>
                </td>
                <td>
                  বর্তমান বাড়ীয়ালার মোবাইল নাম্বারঃ  <asp:Label ID="Label19" runat="server" Text='<%#Eval("OwnerPhone") %>'></asp:Label>
                </td>
            </tr>
        </table>
    </ItemTemplate>
    </asp:DataList>
</div>
<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 viewownleft ">
    <asp:DataList ID="DataList2" runat="server" Width="100%" Height="100%">
        <ItemTemplate>
            <h4>
                বর্তমান ঠিকানা</h4>
            <p>
               বিভাগঃ <asp:Label ID="Labeldivision" runat="server" Text='<%#Eval("Division") %>'></asp:Label></p>
            <p>
               থানাঃ <asp:Label ID="Labelthana" runat="server" Text='<%#Eval("Thana") %>'></asp:Label></p>
            <p>
               ফ্লাট / তলাঃ <asp:Label ID="Labelflat" runat="server" Text='<%#Eval("Flat") %>'></asp:Label></p>
            <p>
               বাড়ী / হোল্ডিংঃ <asp:Label ID="Labelhouse" runat="server" Text='<%#Eval("House") %>'></asp:Label></p>
            <p>
                রাস্তাঃ<asp:Label ID="Labelroad" runat="server" Text='<%#Eval("Rood") %>'></asp:Label></p>
            <p>
               এলাকাঃ <asp:Label ID="Labelarea" runat="server" Text='<%#Eval("Area") %>'></asp:Label></p>
            <p>
               পোস্ট কোডঃ <asp:Label ID="Labelpost" runat="server" Text='<%#Eval("Post") %>'></asp:Label></p>
        </ItemTemplate>
    </asp:DataList>
</div>
</div>
</div>
</asp:Content>
