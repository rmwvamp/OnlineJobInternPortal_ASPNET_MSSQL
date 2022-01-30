<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="JobList.aspx.cs" Inherits="OnlineJobPortal.Admin.JobList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container pt-4 pb-4">
    <div>
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
    </div>
    <div>
    <h3 class="text-center">Job List/Details</h3>
        <div class="row mb-3 pt-sm-3">
            <div class="col-md-12">
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-bordered" 
                    EmptyDataText="No record to display..!" AutoGenerateColumns="False" AllowPaging="True" PageSize="5"
                              OnPageIndexChanging="GridView1_OnPageIndexChanging" DataKeyNames="JobId" OnRowDeleting="GridView1_OnRowDeleting" 
                              OnRowCommand="GridView1_OnRowCommand" >
                    <Columns>
                        <asp:BoundField DataField="Sr.No" HeaderText="Sr.No">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        
                        <asp:BoundField DataField="Title" HeaderText="Job Title">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                                                
                        <asp:BoundField DataField="NoOfPost" HeaderText="No. of Posts">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>

                        
                        <asp:BoundField DataField="Qualification" HeaderText="Qualification">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>

                        
                        <asp:BoundField DataField="Experience" HeaderText="Experience">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>

                        
                        <asp:BoundField DataField="LastDatetoApply" HeaderText="Job Validity" DataFormatString="{0:dd MM yyyy}">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>

                        <asp:BoundField DataField="CompanyName" HeaderText="Company">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        
                        <asp:BoundField DataField="Country" HeaderText="Country">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>

                        
                        <asp:BoundField DataField="State" HeaderText="State">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>

                        
                        <asp:BoundField DataField="CreateDate" HeaderText="Job Posted Date">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        
                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:LinkButton runat="server" ID="btnEditJob" runat="server" CommandName="EditJob" CommandArgument='<%#Eval("JobId") %>'>
                                    <asp:Image runat="server" Id="img" runat="server" ImageUrl="../assets/img/icon/editIcon.png" Height="25px"/>
                                </asp:LinkButton>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" Width="50px"></ItemStyle>
                        </asp:TemplateField>
                        
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

