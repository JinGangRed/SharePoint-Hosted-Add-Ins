'use strict';
var clientContext = SP.ClientContext.get_current();
var employeeList = clientContext.get_web().get_lists().getByTitle("新员工");
var noLevelItems;

function AddLevel(addLevel) {
    var camlQuery = new SP.CamlQuery();
    camlQuery.set_viewXml(
        "<View><Query><Where><Eq><FieldRef Name='Level'/><Value Type='Text'>3<Value></Eq></Where></Query></View>");
    console.log(camlQuery.get_viewXml());
    noLevelItems = employeeList.getItems(camlQuery);
    clientContext.load(noLevelItems);
    clientContext.executeQueryAsync(allNoLevelItemsBack, onGetDataFail);
    return false;
}
/**
 * 所有没有级别的人员集合
 * */
function allNoLevelItemsBack() {
    console.log("获取成功");
    console.dir(noLevelItems);
}
/**
 * 获得数据失败
 * */
function onGetDataFail(sender, args) {
    console.log("获取失败");
    console.dir(sender);
    console.log(args.get_message());
}