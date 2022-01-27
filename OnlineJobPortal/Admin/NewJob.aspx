<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="NewJob.aspx.cs" Inherits="OnlineJobPortal.Admin.NewJob" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container pt-4 pb-4">
        <div>
            <asp:Label ID="lblMsg" runat="server" ></asp:Label>
        </div>
        <div>
            <h3 class="text-center">Add Job</h3>
            <div class="row mr-lg-5 ml-lg-5 mb-3">
                <div class="col-md-6 pt-3">
                    <label for="txtJobTitle"style="font-weight: 600">Job Title</label>
                    <asp:TextBox ID="txtJobTitle" runat="server" CssClass="form-control" placeholder="Ex. Web Developer,App Developer" required>

                    </asp:TextBox>
                </div>
                <div class="col-md-6 pt-3">
                    <label for="txtNumberofPost"style="font-weight: 600">Number of Post</label>
                    <asp:TextBox ID="txtNumberofPost" runat="server" CssClass="form-control" placeholder="Enter Number of Vacancies of Job" TextMode="Number" required>

                    </asp:TextBox>
                </div>
            </div>
            
            <div class="row mr-lg-5 ml-lg-5 mb-3">
                <div class="col-md-12 pt-3">
                    <label for="txtJobTitle"style="font-weight: 600">Description</label>
                    <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control" placeholder="Enter Job Description" TextMode="MultiLine" required>

                    </asp:TextBox>
                </div>
            </div>
            <div class="row mr-lg-5 ml-lg-5 mb-3">
                <div class="col-md-6 pt-3">
                    <label for="txtQualification"style="font-weight: 600">Job Qualification/Education Required</label>
                    <asp:TextBox ID="txtQualification" runat="server" CssClass="form-control" placeholder="Ex. B.Tech, M.Tech or M.B.A." required>

                    </asp:TextBox>
                </div>
                <div class="col-md-6 pt-3">
                    <label for="txtExperience"style="font-weight: 600">Experience Required</label>
                    <asp:TextBox ID="txtExperience" runat="server" CssClass="form-control" placeholder="Ex. 2 Years, 1.5 Years" required>

                    </asp:TextBox>
                </div>

            </div>

            <div class="row mr-lg-5 ml-lg-5 mb-3">
                <div class="col-md-6 pt-3">
                    <label for="txtSpecialization"style="font-weight: 600">Specialization Required</label>
                    <asp:TextBox ID="txtSpecialization" runat="server" CssClass="form-control" placeholder="Enter Specialization, Ex. Artifical Intelligence" TextMode="MultiLine" required>

                    </asp:TextBox>
                </div>
                <div class="col-md-6 pt-3">
                    <label for="txtLastDate"style="font-weight: 600">Last Date To Apply</label>
                    <asp:TextBox ID="txtLastDate" runat="server" CssClass="form-control" placeholder="Enter Last Date to Apply" TextMode="Date" required>

                    </asp:TextBox>
                </div>

            </div>
            <div class="row mr-lg-5 ml-lg-5 mb-3">
                <div class="col-md-6 pt-3">
                    <label for="txtSpecialization"style="font-weight: 600">Salary</label>
                    <asp:TextBox ID="txtSalary" runat="server" CssClass="form-control" placeholder="Ex: 250000 per month" required>

                    </asp:TextBox>
                </div>
                <div class="col-md-6 pt-3">
                    <label for="txtLastDate"style="font-weight: 600">Job Type</label>
                        <asp:DropDownList ID="ddlJobType" runat="server" CssClass="form-control">
                            <asp:ListItem Value="0">Select Job Type</asp:ListItem>
                            <asp:ListItem >Full Time</asp:ListItem>
                            <asp:ListItem >Part Time</asp:ListItem>
                            <asp:ListItem >Remote</asp:ListItem>
                        </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="JobType is required"></asp:RequiredFieldValidator>
                    </asp:TextBox>
                </div>

            </div>


        </div>
    </div>
    
    </asp:Content>
