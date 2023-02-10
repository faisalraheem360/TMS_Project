<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student_Dashboard.Master" AutoEventWireup="true" CodeBehind="View_Tutors.aspx.cs" Inherits="TMS_Project.Student.View_Tutors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class=" row">
    <div class="col-md-12">
         <h1 class="jumbotron text-center text-white bg-dark">VIEW TUTOR DETAIL</h1>
                        
    </div>
    </div>
    <div class="row">
        <div class="col-md-4">
             
           
                <div class="input-group">
                   
                    <asp:TextBox class="form-control"  placeholder="Search for..." ID="SearchText" runat="server"></asp:TextBox>
                    <div class="input-group-append">
                        <button class="btn btn-primary" id="searchbtn"  onserverclick="searchbtn_ServerClick" runat="server" type="button">
                            <i class="fas fa-search"></i></button>
                    </div>
                </div>
            <br />
           
        </div>
    </div>
    <div class="row">
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div class="col-md-4 ">
                <div class="card bg-dark text-white text-center ">
                <div class="card-header">
                     <small style="font-size:15px; color:steelblue;">Name</small>
                    <h3>
                        <asp:Label ID="LabelName" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                    </h3>
                </div>
                    <div class="card-body ">
                         
                             <small style="font-size:15px; color:steelblue;">Email</small>  
                           <h5> <asp:Label ID="LabelEmail" runat="server" style="font-size:13px;" Text='<%# Bind("email") %>'></asp:Label></h5>
                             <small style="font-size:15px; color:steelblue;">Country</small>
                            <h5><asp:Label ID="Label2" runat="server" Text='<%# Bind("country") %>'></asp:Label></h5>
                             <small style="font-size:15px; color:steelblue;">City</small>
                          <h5>  <asp:Label ID="Label3" runat="server" Text='<%# Bind("city") %>'></asp:Label></h5>
                             <small style="font-size:15px; color:steelblue;">Expeirence</small>
                          <h5><asp:Label ID="Label4" runat="server" Text='<%# Bind("Experience") %>'></asp:Label></h5>
                             <small style="font-size:15px; color:steelblue;">Contact Number</small>
                          <h5><asp:Label ID="Label5" runat="server" Text='<%# Bind("contactno") %>'></asp:Label></h5>
                       
                    </div>
                    <div class="card-footer">
                         <small style="font-size:15px; color:steelblue;">Qualification</small>
                        <h4> <asp:Label ID="Label1" runat="server" Text='<%# Bind("degree") %>'></asp:Label></h4>
                    </div>
                </div>
                    <br />
                </div>
               

            </ItemTemplate>

        </asp:Repeater>
    </div>

</asp:Content>
