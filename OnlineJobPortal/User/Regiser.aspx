<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="Regiser.aspx.cs" Inherits="OnlineJobPortal.User.Regiser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <div class="container pt-50 pb-40"> 
            <div class="row">
                    <div class="col-12 pd-20" >
         <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
                    </div>
                    <div class="col-12">
                        <h2 class="contact-title"> Sign Up</h2>
                    </div>
                    <div class="col-lg-8">
                        <div class="form-contact contact_form" >
                            <div class="row">
                                <div class="col-12">
                                        <h6> Login Information</h6>
                                </div>  
                                <div class="col-12">
                                    <div class="form-group">
                                        <label>Username</label>
                                        <asp:TextBox ID= "txtUsername" runat="server" CssClass="form-control" placeholder="Enter Unique Username" required></asp:TextBox>
                                        <%--<textarea class="form-control w-100" name="message" id="message" runat="server"  cols="30" rows="9" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Message'" placeholder=" Enter Message" required></textarea>--%>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <%--<input class="form-control valid" name="name" id="name" runat="server"  type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" placeholder="Enter your name" required>--%>
                                     <label>Password</label>
                                        <asp:TextBox ID= "txtPassword" runat="server" CssClass="form-control" placeholder="Enter Password" required></asp:TextBox>
                                       
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <%--<input class="form-control valid" name="email" id="email" runat="server"  type="email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" placeholder="Email" required>--%>
                                   <label>Password</label>
                                        <asp:TextBox ID= "TextBox1" runat="server" CssClass="form-control" placeholder="Enter Password" required></asp:TextBox>
                                       
                                        </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <input class="form-control" name="subject" id="subject" runat="server"  type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Subject'" placeholder="Enter Subject" required>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group mt-3">

                                    <asp:Button ID="btnSend" runat="server" Text="Send" CssClass="button button-contactForm boxed-btn" OnClick="btnSend_Click"/>
                            </div>
                        <%--</form>--%>
                            </div>
                        </div>  
                        </div>  
        </div>
    </section>
</asp:Content>
