(function () {
    /**
     * 设置修改覆盖样式选项
     * */
    var templateOverridesOptions = {};
    templateOverridesOptions.Templates = {};
    //templateOverridesOptions.Templates.Header = renderHeader;
    templateOverridesOptions.Templates.Fields = {
        "Level": { "View": renderItems}
    }


    SPClientTemplates.TemplateManager.RegisterTemplateOverrides(templateOverridesOptions);
})();
/**
 * 渲染列表
 * */
function renderItems(ctx) {
    console.log(ctx);
    var Level = ctx.CurrentItem[ctx.CurrentFieldSchema.Name];
    if (Level > 2) {
        return "<p style='color:blue'>" + Level + "</p>";
    } else {
        return Level;
    }
}
function renderHeader(renderContext) {
    console.log(renderContext);
    return "heder";
}