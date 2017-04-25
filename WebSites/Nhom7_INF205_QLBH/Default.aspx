<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <p style="font-family: cursive; font-size: x-large; font-style: italic; color: #FF0000; text-align: center;">
                WELCOME TO C-SHOP</p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3 style="font-size: large; font-weight: bold; font-style: italic; color: #0000FF">*Sản Phẩm Mới:</h3>
    <br />
    <asp:Panel ID="Panel1" runat="server" style="margin-right: 0px" Width="771px" HorizontalAlign="center">
        <asp:Image ID="Image1" runat="server" Height="229px" Width="191px" ImageUrl="~/Images/ao1.jpg"  />
        <asp:Image ID="Image2" runat="server" Height="229px" Width="191px" style="margin-left:50px; margin-right:50px;" ImageUrl="~/Images/quan1.jpg" />
        <asp:Image ID="Image3" runat="server" Height="229px" Width="191px" ImageUrl="~/Images/ao3.jpg" />
    </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" style="margin-right: 0px" Width="771px" HorizontalAlign="center">
        <asp:DetailsView ID="DetailsView1" runat="server" Height="28px" Width="189px" style="float:left; margin-left:45px;border:0px;" AutoGenerateRows="False" DataSourceID="GiaBanSP1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
            <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="TenSP"  SortExpression="TenSP"/>
                <asp:BoundField DataField="GiaBan" HeaderText="Giá" SortExpression="GiaBan" />
            </Fields>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            </asp:DetailsView>
            <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataSourceID="GiaBanSP2" Height="16px" style="float:left;margin-left:55px; margin-right:50px;border:0px;" Width="189px" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="TenSP" SortExpression="TenSP" />
                    <asp:BoundField DataField="GiaBan" HeaderText="Giá" SortExpression="GiaBan" />
                </Fields>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            </asp:DetailsView>
            <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" DataSourceID="GiaBanSP3" Height="27px" style="float:left; border:0px;margin-left: 0px;" Width="193px" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="TenSP"  SortExpression="TenSP"  />
                    <asp:BoundField DataField="GiaBan" HeaderText="Giá" SortExpression="GiaBan" />
                </Fields>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="GiaBanSP3" runat="server" ConnectionString="<%$ ConnectionStrings:QLBH_Connect %>" SelectCommand="SELECT [TenSP], [GiaBan] FROM [SanPham] WHERE ([MaSP] = @MaSP)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="4" Name="MaSP" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:SqlDataSource ID="GiaBanSP1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBH_Connect %>" SelectCommand="SELECT [TenSP], [GiaBan] FROM [SanPham] WHERE ([MaSP] = @MaSP)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="5" Name="MaSP" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="GiaBanSP2" runat="server" ConnectionString="<%$ ConnectionStrings:QLBH_Connect %>" SelectCommand="SELECT [TenSP], [GiaBan] FROM [SanPham] WHERE ([MaSP] = @MaSP)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="2" Name="MaSP" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
    </asp:Panel>
    <h3 style="clear:both; font-weight: bold; font-style: italic; color: #0000FF; font-size: large;">*Sản Phẩm Bán Chạy:</h3>
    <asp:Panel ID="Panel3" runat="server" style="margin-right: 0px; margin-top:20px;" Width="771px" HorizontalAlign="center">
        <asp:Image ID="Image4" runat="server" Height="229px" Width="191px" ImageUrl="~/Images/ao2.jpg"  />
        <asp:Image ID="Image5" runat="server" Height="229px" Width="191px" style="margin-left:50px; margin-right:50px;" ImageUrl="~/Images/quan2.jpg" />
        <asp:Image ID="Image6" runat="server" Height="229px" Width="191px" ImageUrl="~/Images/ao7.jpg" />
    </asp:Panel>
        <asp:Panel ID="Panel4" runat="server" style="margin-right: 0px" Width="771px" HorizontalAlign="center">
        <asp:DetailsView ID="DetailsView4" runat="server" Height="28px" Width="190px" style="float:left; margin-left:45px;border:0px;" AutoGenerateRows="False" DataSourceID="GiaBanSP5" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
            <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="TenSP"  SortExpression="TenSP"/>
                <asp:BoundField DataField="GiaBan" HeaderText="Giá" SortExpression="GiaBan" />
            </Fields>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            </asp:DetailsView>
            <asp:DetailsView ID="DetailsView5" runat="server" AutoGenerateRows="False" DataSourceID="GiaBanSP6" Height="16px" style="float:left;margin-left:55px; margin-right:50px;border:0px;" Width="189px" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="TenSP" SortExpression="TenSP" />
                    <asp:BoundField DataField="GiaBan" HeaderText="Giá" SortExpression="GiaBan" />
                </Fields>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            </asp:DetailsView>
            <asp:DetailsView ID="DetailsView6" runat="server" AutoGenerateRows="False" DataSourceID="GiaBanSP4" Height="27px" style="float:left; border:0px;margin-left: 0px;" Width="193px" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="TenSP"  SortExpression="TenSP"/>
                    <asp:BoundField DataField="GiaBan" HeaderText="Giá" SortExpression="GiaBan" />
                </Fields>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="GiaBanSP4" runat="server" ConnectionString="<%$ ConnectionStrings:QLBH_Connect %>" SelectCommand="SELECT [TenSP], [GiaBan] FROM [SanPham] WHERE ([MaSP] = @MaSP)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="7" Name="MaSP" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:SqlDataSource ID="GiaBanSP5" runat="server" ConnectionString="<%$ ConnectionStrings:QLBH_Connect %>" SelectCommand="SELECT [TenSP], [GiaBan] FROM [SanPham] WHERE ([MaSP] = @MaSP)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="6" Name="MaSP" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="GiaBanSP6" runat="server" ConnectionString="<%$ ConnectionStrings:QLBH_Connect %>" SelectCommand="SELECT [TenSP], [GiaBan] FROM [SanPham] WHERE ([MaSP] = @MaSP)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="3" Name="MaSP" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
    </asp:Panel>
    <br />
    <p>&nbsp;</p>
    </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    </asp:Content>

