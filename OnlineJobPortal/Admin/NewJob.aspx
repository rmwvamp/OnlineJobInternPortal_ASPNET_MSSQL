<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="NewJob.aspx.cs" Inherits="OnlineJobPortal.Admin.NewJob" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container pt-4 pb-4">
     <%--   <div>
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
        </div>--%>
        <div class="btn-toolbar justify-content-between mb-3">
            <div class="btn-group">
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </div>
            <div class="input-group h-25">
                <asp:HyperLink ID="linkBack" runat="server" NavigateUrl="~/Admin/JobList.aspx" CssClass="btn btn-secondary" Visible="False">Back</asp:HyperLink>
            </div>
        </div>

        <div>
            <h3 class="text-center"><% Response.Write(Session["title"]);%></h3>
            <div class="row mr-lg-5 ml-lg-5 mb-3">
                <div class="col-md-6 pt-3">
                    <label for="txtJobTitle" style="font-weight: 600">Job Title</label>
                    <asp:TextBox ID="txtJobTitle" runat="server" CssClass="form-control" placeholder="Ex. Web Developer,App Developer" required>

                    </asp:TextBox>
                </div>
                <div class="col-md-6 pt-3">
                    <label for="txtNumberofPosts" style="font-weight: 600">Number of Post</label>
                    <asp:TextBox ID="txtNumberofPosts" runat="server" CssClass="form-control" placeholder="Enter Number of Vacancies of Job" TextMode="Number" required>

                    </asp:TextBox>
                </div>
            </div>

            <div class="row mr-lg-5 ml-lg-5 mb-3">
                <div class="col-md-12 pt-3">
                    <label for="txtDescription" style="font-weight: 600">Description</label>
                    <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control" placeholder="Enter Job Description" TextMode="MultiLine" required>

                    </asp:TextBox>
                </div>
            </div>
            <div class="row mr-lg-5 ml-lg-5 mb-3">
                <div class="col-md-6 pt-3">
                    <label for="txtQualification" style="font-weight: 600">Job Qualification/Education Required</label>
                    <asp:TextBox ID="txtQualification" runat="server" CssClass="form-control" placeholder="Ex. B.Tech, M.Tech or M.B.A." required>

                    </asp:TextBox>
                </div>
                <div class="col-md-6 pt-3">
                    <label for="txtExperience" style="font-weight: 600">Experience Required</label>
                    <asp:TextBox ID="txtExperience" runat="server" CssClass="form-control" placeholder="Ex. 2 Years, 1.5 Years" required>

                    </asp:TextBox>
                </div>

            </div>

            <div class="row mr-lg-5 ml-lg-5 mb-3">
                <div class="col-md-6 pt-3">
                    <label for="txtSpecialization" style="font-weight: 600">Specialization Required</label>
                    <asp:TextBox ID="txtSpecialization" runat="server" CssClass="form-control" placeholder="Enter Specialization, Ex. Artifical Intelligence" TextMode="MultiLine" required>

                    </asp:TextBox>
                </div>
                <div class="col-md-6 pt-3">
                    <label for="txtLastDatetoApply" style="font-weight: 600">Last Date To Apply</label>
                    <asp:TextBox ID="txtLastDatetoApply" runat="server" CssClass="form-control" placeholder="Enter Last Date to Apply" TextMode="Date" required>

                    </asp:TextBox>
                </div>

            </div>
            <div class="row mr-lg-5 ml-lg-5 mb-3">
                <div class="col-md-6 pt-3">
                    <label for="txtSalary" style="font-weight: 600">Salary</label>
                    <asp:TextBox ID="txtSalary" runat="server" CssClass="form-control" placeholder="Ex: 250000 per month" required>

                    </asp:TextBox>
                </div>
                <div class="col-md-6 pt-3">
                    <label for="ddlJobType" style="font-weight: 600">Job Type</label>
                    <asp:DropDownList ID="ddlJobType" runat="server" CssClass="form-control">
                        <asp:ListItem Value="0">Select Job Type</asp:ListItem>
                        <asp:ListItem>Full Time</asp:ListItem>
                        <asp:ListItem>Part Time</asp:ListItem>
                        <asp:ListItem>Remote</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="JobType is required" ForeColor="Red" ControlToValidate="ddlJobType" InitialValue="0" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </asp:TextBox>
                </div>

            </div>
            <div class="row mr-lg-5 ml-lg-5 mb-3">
                <div class="col-md-6 pt-3">
                    <label for="txtCompanyName" style="font-weight: 600">Company/Organisation Name</label>
                    <asp:TextBox ID="txtCompanyName" runat="server" CssClass="form-control" placeholder="Enter Company Name" required>

                    </asp:TextBox>
                </div>
                <div class="col-md-6 pt-3">
                    <label for="fuCompanyLogo" style="font-weight: 600">Company/Organisation Logo</label>
                    <asp:FileUpload ID="fuCompanyLogo" runat="server" ToolTip=".jpg,.jpeg,.png extension only" />
                </div>

            </div>
            <div class="row mr-lg-5 ml-lg-5 mb-3">
                <div class="col-md-6 pt-3">
                    <label for="txtWebsite" style="font-weight: 600">Website</label>
                    <asp:TextBox ID="txtWebsite" runat="server" CssClass="form-control" TextMode="Url" placeholder="Website Url">

                    </asp:TextBox>
                </div>
                <div class="col-md-6 pt-3">
                    <label for="txtEmail" style="font-weight: 600">Email</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email of the Contact Person" TextMode="Email" required>

                    </asp:TextBox>
                </div>

            </div>
            <div class="row mr-lg-5 ml-lg-5 mb-3">
                <div class="col-md-12 pt-3">
                    <label for="txtAddress" style="font-weight: 600">Address</label>
                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder="Enter Address" TextMode="MultiLine" required>

                    </asp:TextBox>
                </div>
            </div>
            <div class="row mr-lg-5 ml-lg-5 mb-3">
                <div class="col-md-6 pt-3">
                    <label for="ddlCountry" style="font-weight: 600">Country</label>
                    <asp:DropDownList ID="ddlCountry" runat="server" DataSourceID="SqlDataSource1" CssClass="form-control w-100"
                        AppendDataBoundItems="true" DataTextField="CountryName" DataValueField="CountryName">
                        <asp:ListItem Value="0">Select Country</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Country is required" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small" InitialValue="0" ControlToValidate="ddlCountry"></asp:RequiredFieldValidator>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT [CountryName] FROM [Country]"></asp:SqlDataSource>

                </div>
                <div class="col-md-6 pt-3">
                    <label for="txtState" style="font-weight: 600">State</label>
                    <asp:TextBox ID="txtState" runat="server" CssClass="form-control" placeholder="Enter State" required>
                    </asp:TextBox>
                </div>

            </div>
            <div class="row mr-lg-5 ml-lg-5 mb-3 pt-4">
                <div class="col-md-3 col-md-offset-2 mb-3">
                    <asp:Button Id="btnAdd" runat="server" CssClass="btn btn-primary btn-block" BackColor="#7200cf" Text="Add Job" OnClick="OnClick" />
                </div>

            </div>

        </div>

    </div>

</asp:Content>
