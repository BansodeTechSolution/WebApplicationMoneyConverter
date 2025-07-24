<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MoneyConversion.aspx.cs" Inherits="WebApplicationMoneyConverter.MoneyConversion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
         <asp:Label ID="lblAmount" runat="server" Text="Amount" />
            <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>

            <br />
            <asp:Label ID="lblFromCurrency" runat="server" Text="From Currency" />
            <asp:DropDownList ID="ddlFromCurrency" runat="server">
                <asp:ListItem Value="USD">USD</asp:ListItem>
                <asp:ListItem Value="EUR">EUR</asp:ListItem>
                <asp:ListItem Value="INR">INR</asp:ListItem>
                </asp:DropDownList>
            <br />
            <asp:Label ID="lblToCurrency" runat="server" Text="To Currency" />
            <asp:DropDownList ID="ddlToCurrency" runat="server">
                <asp:ListItem Value="USD">USD</asp:ListItem>
                <asp:ListItem Value="EUR">EUR</asp:ListItem>
                <asp:ListItem Value="INR">INR</asp:ListItem>
                </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="btnConvert" runat="server" Text="Convert" OnClick="btnConvert_Click" />
            <br />
            <br />
            <asp:Label ID="lblResult" runat="server" Text="" Font-Bold="true" ForeColor="Blue" />

        </div>
    </form>
</body>
</html>
