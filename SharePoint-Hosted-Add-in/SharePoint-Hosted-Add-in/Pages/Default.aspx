<%-- 以下 4 行是使用 SharePoint 组件时所需的 ASP.NET 指令 --%>

<%@ Page Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/default.master" Language="C#" %>

<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%-- 以下 Content 元素中的标记和脚本将放置在页面的 <head> 中 --%>
<asp:Content ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    <script type="text/javascript" src="../Scripts/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="/_layouts/15/sp.runtime.js"></script>
    <script type="text/javascript" src="/_layouts/15/sp.js"></script>
    <%--<SharePoint:ScriptLink name="sp.js" runat="server" OnDemand="true" LoadAfterUI="true" Localizable="false" />--%>
    <meta name="WebPartPageExpansion" content="full" />

    <!-- 向以下文件中添加 CSS 样式 -->
    <link rel="Stylesheet" type="text/css" href="../Content/App.css" />

    <!-- 向以下文件中添加 JavaScript -->
    <script type="text/javascript" src="../Scripts/App.js"></script>
</asp:Content>

<%-- 以下 Content 元素中的标记将放置在页面的 TitleArea 中 --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
    GitHub 测试项目
</asp:Content>

<%-- 以下 Content 元素中的标记和脚本将放置在页面的 <body> 中 --%>
<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">

    <div>
        <p id="message">
            <!-- 运行该应用时会将以下内容替换为用户名 - 请参阅 App.js -->
            initializing...
        </p>
    </div>
    <p>
        <asp:HyperLink NavigateUrl="JavaScript:window.location = _spPageContextInfo.webAbsoluteUrl + '/Lists/NewEmployee/AllItems.aspx'" runat="server"
            Text="新员工组件测试" />
    </p>

</asp:Content>
