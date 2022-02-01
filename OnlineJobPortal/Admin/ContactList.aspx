<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ContactList.aspx.cs" Inherits="OnlineJobPortal.Admin.ContactList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container pt-4 pb-4">
    <div>
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
    </div>
    <div>
    <h3 class="text-center">Contact List/Details</h3>
        <div class="row mb-3 pt-sm-3">
            <div class="col-md-12">
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-bordered" EmptyDataText="No record to display..!"
                              AutoGenerateColumns="False" AllowPaging="True" PageSize="5" OnPageIndexChanging="GridView1_OnPageIndexChanging" 
                              DataKeyNames="ContactId" OnRowDeleting="GridView1_OnRowDeleting">
                    <Columns>
                        <asp:BoundField DataField="Sr.No" HeaderText="Sr.No">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        
                        <asp:BoundField DataField="Name" HeaderText="User Name">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                                                
                        <asp:BoundField DataField="Email" HeaderText="Email">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>

                        
                        <asp:BoundField DataField="Subject" HeaderText="Subject">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>

                        
                        <asp:BoundField DataField="Message" HeaderText="Message">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>

                        
                                             
                        <asp:CommandField CausesValidation="False" HeaderText="Delete" ShowDeleteButton="True"
                                          DeleteImageUrl="../assets/img/icon/trashIcon.png" ButtonType="Image">
                            <ControlStyle Height="25px" Width="25px"></ControlStyle>
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:CommandField>
                   </Columns>
                    <HeaderStyle BackColor="#7200cf" ForeColor="White"></HeaderStyle>
                </asp:GridView>
            </div>
        </div>
    </div></div>
</asp:Content>
