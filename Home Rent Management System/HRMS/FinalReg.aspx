<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="FinalReg.aspx.cs" Inherits="Home_Rent_Management_System.HRMS.FinalReg" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4>
        ভাড়াটিয়া নিবন্ধন ফরম</h4>
    <hr />
    <table style="height: 350px" width="600px">
        <tr>
            <td>
                <asp:Label ID="LabelPicture" runat="server" Text="ছবিঃ"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUploadImage" runat="server" Height="30px" Width="280px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LabelOwnerName" runat="server" Text="বর্তমান বাড়ীয়ালার নামঃ"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextOwnerName" runat="server" Height="30px" Width="280px" Font-Size="Medium"
                    ForeColor="#006600"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LabelOwnerPhone" runat="server" Text="বর্তমান বাড়ীয়ালার মোবাইল নাম্বারঃ"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextOwnerMobile" runat="server" Height="30px" Width="280px" Font-Size="Medium"
                    ForeColor="#006600" TextMode="Number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LabelStayDate" runat="server" Text="বর্তমান বাড়ীতে বসবাসের তারিখঃ"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextDate" runat="server" Height="30px" Width="280px" Font-Size="Medium"
                    ForeColor="#006600" TextMode="Date"> </asp:TextBox>
            </td>
        </tr>
        
        <tr>
            <td>
                <asp:Button ID="ButtonPrevious" runat="server" Text="যাচাই" class="btn btn-primary pull-left"
                    Width="168px" Height="31px" onclick="ButtonPrevious_Click" />
            </td>
            <td>
                <asp:Button ID="ButtonNext" runat="server" Text="রেজিষ্টার" class="btn btn-primary pull-right"
                    Width="168px" Height="31px" onclick="ButtonNext_Click" />
            </td>
        </tr>
    </table>


    <!--Ajax Control-->
    <asp:ScriptManager ID="ScriptManager1" runat="server">
      </asp:ScriptManager>
    <asp:Panel ID="Panel1" runat="server" CssClass="modalP">
    <div class="container">
        <div class="row">
            
            <div class="col-xs-10 col-sm-10 col-md-10 col-lg-10 previewheader">
                <h3>
                    ঢাকা মেট্রো পলিটন পুলিশ
                </h3>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-xs-offset-1 col-sm-offset-1 col-md-offset-1 col-lg-offset-1 col-xs-10 col-sm-10 col-md-10 col-lg-10">
                <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 previewMiddleContent">
                    <table style="height: 500px" width="80%">
                        <tr>
                            <td>
                                <asp:Label ID="LabelName" runat="server" Text=""></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="LabelFather" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="LabelPhone" runat="server" Text=""></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="LabelEmail" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="LabelDOB" runat="server" Text=""></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="LabelEmployee" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="LabelEducation" runat="server" Text=""></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="LabelRelign" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="LabelMarid" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="LabelNationID" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="LabelAddress" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="LabelEmployeeA" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 previewInitialContent">
                    <table style="height: 100%; width: 100%">
                        <tr>
                            <td>
                                <asp:Label ID="LabelDivision" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="LabelThana" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="LabelArea" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="LabelPost" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="LabelHouse" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="LabelRoad" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="LabelFlat" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
        <asp:Button ID="ok" runat="server" Text=" ওকে " class="btn btn-primary pull-right"
                    Width="168px" Height="31px"/>
    </asp:Panel>
    <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="Panel1"
        TargetControlID="ButtonPrevious" CancelControlID="ok" BackgroundCssClass="modalPop" >
    </ajaxToolkit:ModalPopupExtender>

    <!--Ajax Control-->

  
</asp:Content>