<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlineJobPortal.User.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container pt-50 pb-40">
            <div class="row">
                <div class="col-12 pd-20">
                    <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
                </div>
                <div class="col-12">
                    <h2 class="contact-title text-center">Sign In</h2>
                </div>
                <div class="col-lg-6 mx-auto">
                    <div class="form-contact contact_form">
                        <div class="row">
                            <div class="col-12">
                                <div class="form-group">
                                    <label>Username</label>
                                    <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Enter Unique Username" required></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <label>Password</label>
                                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Enter Password" TextMode="Password" required></asp:TextBox>

                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <label>Login Type</label>
                                    <asp:DropDownList ID="ddlLoginType" CssClass="form-control w-100" runat="server">
                                        <asp:ListItem Value="0">Select Login Type</asp:ListItem>
                                        <asp:ListItem>Admin</asp:ListItem>
                                        <asp:ListItem>User</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Login Type is required" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small" InitialValue="0" ControlToValidate="ddlLoginType"></asp:RequiredFieldValidator>


                                </div>
                            </div>
                        </div>
                        <div class="form-group mt-3">

                            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="button button-contactForm boxed-btn mr-4"
                                OnClick="btnLogin_Click" />
                            <span class="clickLink"><a href="../User/Register.aspx">New User? Click Here..</a></span>
                        </div>
                        <%--</form>--%>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
