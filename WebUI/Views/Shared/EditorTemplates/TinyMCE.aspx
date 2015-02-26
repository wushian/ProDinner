﻿<%@ Page Language="C#" MasterPageFile="Template.Master" Inherits="System.Web.Mvc.ViewPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Data" runat="server">
    <%= Html.TextArea("", Model) %>
    <script type="text/javascript">
        (function () {
            var id = "<%=ViewData.TemplateInfo.GetFullHtmlFieldId(string.Empty)%>";
            tinymce.init({ selector: '#' + id , height: 200});
            $('#' + id).closest('form').submit(function () { tinymce.triggerSave(); });
            $('#' + id).closest('.awe-popup').on('dialogbeforeclose', function () {
                tinymce.get(id).destroy();
            });
        })();
	</script>
</asp:Content>