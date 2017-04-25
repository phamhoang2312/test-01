<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="product.aspx.vb" Inherits="product" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            color: #FF0000;
        }
    </style>
</asp:Content>
     <asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
         <h3 style="font-size: x-large; font-weight: bold; font-style: italic; color: #FF0000; font-family: 'times New Roman', Times, serif;">*Sản Phẩm Nổi Bật:</h3>
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
                <asp:BoundField DataField="TenSP"  SortExpression="TenSP" />
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
                    <asp:BoundField DataField="TenSP" SortExpression="TenSP"  />
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
                    <asp:BoundField DataField="TenSP"  SortExpression="TenSP" />
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
         <asp:Panel ID="Panel5" runat="server">
             <h3 class="auto-style1">&nbsp;</h3>
             <h3 class="auto-style1"><em>Danh Mục Sản Phẩm</em></h3>
             <p class="auto-style1">
                 <asp:DetailsView ID="DetailsView7" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="MaSP" DataSourceID="DanhMuc" GridLines="Vertical" Height="50px" Width="394px">
                     <AlternatingRowStyle BackColor="#DCDCDC" />
                     <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                     <Fields>
                         <asp:BoundField DataField="MaSP" HeaderText="MaSP" ReadOnly="True" SortExpression="MaSP" />
                         <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
                         <asp:BoundField DataField="HangSanXuat" HeaderText="HangSanXuat" SortExpression="HangSanXuat" />
                         <asp:BoundField DataField="GiaBan" HeaderText="GiaBan" SortExpression="GiaBan" />
                         <asp:BoundField DataField="SoluongConLai" HeaderText="SoluongConLai" SortExpression="SoluongConLai" />
                         <asp:BoundField DataField="DonViTinh" HeaderText="DonViTinh" SortExpression="DonViTinh" />
                         <asp:BoundField DataField="MoTaSP" HeaderText="MoTaSP" SortExpression="MoTaSP" />
                         <asp:BoundField DataField="MaLoaiSP" HeaderText="MaLoaiSP" SortExpression="MaLoaiSP" />
                         <asp:BoundField DataField="AnhSP" HeaderText="AnhSP" SortExpression="AnhSP" />
                         <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                     </Fields>
                     <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                     <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                     <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                     <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                 </asp:DetailsView>
                 <asp:SqlDataSource ID="DanhMuc" runat="server" ConnectionString="<%$ ConnectionStrings:QLBH_Connect %>" DeleteCommand="DELETE FROM [SanPham] WHERE [MaSP] = @MaSP" InsertCommand="INSERT INTO [SanPham] ([MaSP], [TenSP], [HangSanXuat], [GiaBan], [SoluongConLai], [DonViTinh], [MoTaSP], [MaLoaiSP], [AnhSP]) VALUES (@MaSP, @TenSP, @HangSanXuat, @GiaBan, @SoluongConLai, @DonViTinh, @MoTaSP, @MaLoaiSP, @AnhSP)" SelectCommand="SELECT [MaSP], [TenSP], [HangSanXuat], [GiaBan], [SoluongConLai], [DonViTinh], [MoTaSP], [MaLoaiSP], [AnhSP] FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [TenSP] = @TenSP, [HangSanXuat] = @HangSanXuat, [GiaBan] = @GiaBan, [SoluongConLai] = @SoluongConLai, [DonViTinh] = @DonViTinh, [MoTaSP] = @MoTaSP, [MaLoaiSP] = @MaLoaiSP, [AnhSP] = @AnhSP WHERE [MaSP] = @MaSP">
                     <DeleteParameters>
                         <asp:Parameter Name="MaSP" Type="Int32" />
                     </DeleteParameters>
                     <InsertParameters>
                         <asp:Parameter Name="MaSP" Type="Int32" />
                         <asp:Parameter Name="TenSP" Type="String" />
                         <asp:Parameter Name="HangSanXuat" Type="String" />
                         <asp:Parameter Name="GiaBan" Type="Decimal" />
                         <asp:Parameter Name="SoluongConLai" Type="Int32" />
                         <asp:Parameter Name="DonViTinh" Type="String" />
                         <asp:Parameter Name="MoTaSP" Type="String" />
                         <asp:Parameter Name="MaLoaiSP" Type="Int32" />
                         <asp:Parameter Name="AnhSP" Type="String" />
                     </InsertParameters>
                     <UpdateParameters>
                         <asp:Parameter Name="TenSP" Type="String" />
                         <asp:Parameter Name="HangSanXuat" Type="String" />
                         <asp:Parameter Name="GiaBan" Type="Decimal" />
                         <asp:Parameter Name="SoluongConLai" Type="Int32" />
                         <asp:Parameter Name="DonViTinh" Type="String" />
                         <asp:Parameter Name="MoTaSP" Type="String" />
                         <asp:Parameter Name="MaLoaiSP" Type="Int32" />
                         <asp:Parameter Name="AnhSP" Type="String" />
                         <asp:Parameter Name="MaSP" Type="Int32" />
                     </UpdateParameters>
                 </asp:SqlDataSource>
             </p>
             <h3 class="auto-style1" style="font-style: italic">Khách Hàng</h3>
         </asp:Panel>
         
         <br />
         <asp:DetailsView ID="DetailsView8" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaKH" DataSourceID="SqlDataSource1" Height="64px" Width="393px">
             <Fields>
                 <asp:BoundField DataField="MaKH" HeaderText="MaKH" ReadOnly="True" SortExpression="MaKH" />
                 <asp:BoundField DataField="TenKH" HeaderText="TenKH" SortExpression="TenKH" />
                 <asp:BoundField DataField="SoDT" HeaderText="SoDT" SortExpression="SoDT" />
                 <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
                 <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                 <asp:BoundField DataField="SoCMTND" HeaderText="SoCMTND" SortExpression="SoCMTND" />
                 <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
             </Fields>
         </asp:DetailsView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBH_Connect %>" DeleteCommand="DELETE FROM [KhachHang] WHERE [MaKH] = @MaKH" InsertCommand="INSERT INTO [KhachHang] ([MaKH], [TenKH], [SoDT], [DiaChi], [Email], [SoCMTND]) VALUES (@MaKH, @TenKH, @SoDT, @DiaChi, @Email, @SoCMTND)" SelectCommand="SELECT [MaKH], [TenKH], [SoDT], [DiaChi], [Email], [SoCMTND] FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [TenKH] = @TenKH, [SoDT] = @SoDT, [DiaChi] = @DiaChi, [Email] = @Email, [SoCMTND] = @SoCMTND WHERE [MaKH] = @MaKH">
             <DeleteParameters>
                 <asp:Parameter Name="MaKH" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="MaKH" Type="Int32" />
                 <asp:Parameter Name="TenKH" Type="String" />
                 <asp:Parameter Name="SoDT" Type="Int32" />
                 <asp:Parameter Name="DiaChi" Type="String" />
                 <asp:Parameter Name="Email" Type="String" />
                 <asp:Parameter Name="SoCMTND" Type="Int32" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="TenKH" Type="String" />
                 <asp:Parameter Name="SoDT" Type="Int32" />
                 <asp:Parameter Name="DiaChi" Type="String" />
                 <asp:Parameter Name="Email" Type="String" />
                 <asp:Parameter Name="SoCMTND" Type="Int32" />
                 <asp:Parameter Name="MaKH" Type="Int32" />
             </UpdateParameters>
         </asp:SqlDataSource>
         <br />
             <h3 class="auto-style1" style="font-style: italic"><em>Loại Sản Phẩm</em></h3>
             <br />
         <asp:DetailsView ID="DetailsView9" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaLoaiSP" DataSourceID="SqlDataSource2" Height="99px" Width="386px">
             <Fields>
                 <asp:BoundField DataField="MaLoaiSP" HeaderText="MaLoaiSP" ReadOnly="True" SortExpression="MaLoaiSP" />
                 <asp:BoundField DataField="TenLoaiSP" HeaderText="TenLoaiSP" SortExpression="TenLoaiSP" />
                 <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
             </Fields>
         </asp:DetailsView>
         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QLBH_Connect %>" DeleteCommand="DELETE FROM [LoaiSP] WHERE [MaLoaiSP] = @MaLoaiSP" InsertCommand="INSERT INTO [LoaiSP] ([MaLoaiSP], [TenLoaiSP]) VALUES (@MaLoaiSP, @TenLoaiSP)" SelectCommand="SELECT [MaLoaiSP], [TenLoaiSP] FROM [LoaiSP]" UpdateCommand="UPDATE [LoaiSP] SET [TenLoaiSP] = @TenLoaiSP WHERE [MaLoaiSP] = @MaLoaiSP">
             <DeleteParameters>
                 <asp:Parameter Name="MaLoaiSP" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="MaLoaiSP" Type="Int32" />
                 <asp:Parameter Name="TenLoaiSP" Type="String" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="TenLoaiSP" Type="String" />
                 <asp:Parameter Name="MaLoaiSP" Type="Int32" />
             </UpdateParameters>
         </asp:SqlDataSource>
             <h3 class="auto-style1" style="font-style: italic"><em>Hóa Đơn</em></h3>
             <br />
         <asp:DetailsView ID="DetailsView10" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaHD" DataSourceID="SqlDataSource3" Height="91px" Width="380px">
             <Fields>
                 <asp:BoundField DataField="MaHD" HeaderText="MaHD" ReadOnly="True" SortExpression="MaHD" />
                 <asp:BoundField DataField="NgayXuatHD" HeaderText="NgayXuatHD" SortExpression="NgayXuatHD" />
                 <asp:BoundField DataField="MaKH" HeaderText="MaKH" SortExpression="MaKH" />
                 <asp:BoundField DataField="NhanVien" HeaderText="NhanVien" SortExpression="NhanVien" />
                 <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
             </Fields>
         </asp:DetailsView>
         <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:QLBH_Connect %>" DeleteCommand="DELETE FROM [HoaDon] WHERE [MaHD] = @MaHD" InsertCommand="INSERT INTO [HoaDon] ([MaHD], [NgayXuatHD], [MaKH], [NhanVien]) VALUES (@MaHD, @NgayXuatHD, @MaKH, @NhanVien)" SelectCommand="SELECT [MaHD], [NgayXuatHD], [MaKH], [NhanVien] FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [NgayXuatHD] = @NgayXuatHD, [MaKH] = @MaKH, [NhanVien] = @NhanVien WHERE [MaHD] = @MaHD">
             <DeleteParameters>
                 <asp:Parameter Name="MaHD" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="MaHD" Type="Int32" />
                 <asp:Parameter Name="NgayXuatHD" Type="DateTime" />
                 <asp:Parameter Name="MaKH" Type="Int32" />
                 <asp:Parameter Name="NhanVien" Type="String" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="NgayXuatHD" Type="DateTime" />
                 <asp:Parameter Name="MaKH" Type="Int32" />
                 <asp:Parameter Name="NhanVien" Type="String" />
                 <asp:Parameter Name="MaHD" Type="Int32" />
             </UpdateParameters>
         </asp:SqlDataSource>
         <h3 class="auto-style1" style="font-style: italic"><em>Chi Tiết Hóa Đơn</em></h3>
             <br />
         <asp:DetailsView ID="DetailsView11" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaCTHD" DataSourceID="SqlDataSource4" Height="64px" Width="378px">
             <Fields>
                 <asp:BoundField DataField="MaCTHD" HeaderText="MaCTHD" ReadOnly="True" SortExpression="MaCTHD" />
                 <asp:BoundField DataField="MaSP" HeaderText="MaSP" SortExpression="MaSP" />
                 <asp:BoundField DataField="MaHD" HeaderText="MaHD" SortExpression="MaHD" />
                 <asp:BoundField DataField="Soluong" HeaderText="Soluong" SortExpression="Soluong" />
                 <asp:BoundField DataField="GiaTriHD" HeaderText="GiaTriHD" SortExpression="GiaTriHD" />
                 <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
             </Fields>
         </asp:DetailsView>
         <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:QLBH_Connect %>" DeleteCommand="DELETE FROM [ChiTietHD] WHERE [MaCTHD] = @MaCTHD" InsertCommand="INSERT INTO [ChiTietHD] ([MaCTHD], [MaSP], [MaHD], [Soluong], [GiaTriHD]) VALUES (@MaCTHD, @MaSP, @MaHD, @Soluong, @GiaTriHD)" SelectCommand="SELECT [MaCTHD], [MaSP], [MaHD], [Soluong], [GiaTriHD] FROM [ChiTietHD]" UpdateCommand="UPDATE [ChiTietHD] SET [MaSP] = @MaSP, [MaHD] = @MaHD, [Soluong] = @Soluong, [GiaTriHD] = @GiaTriHD WHERE [MaCTHD] = @MaCTHD">
             <DeleteParameters>
                 <asp:Parameter Name="MaCTHD" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="MaCTHD" Type="Int32" />
                 <asp:Parameter Name="MaSP" Type="Int32" />
                 <asp:Parameter Name="MaHD" Type="Int32" />
                 <asp:Parameter Name="Soluong" Type="Int32" />
                 <asp:Parameter Name="GiaTriHD" Type="Decimal" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="MaSP" Type="Int32" />
                 <asp:Parameter Name="MaHD" Type="Int32" />
                 <asp:Parameter Name="Soluong" Type="Int32" />
                 <asp:Parameter Name="GiaTriHD" Type="Decimal" />
                 <asp:Parameter Name="MaCTHD" Type="Int32" />
             </UpdateParameters>
         </asp:SqlDataSource>
         
    <br />
    
</asp:Content>

