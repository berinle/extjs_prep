<%--
  Created by IntelliJ IDEA.
  User: berinle
  Date: 1/18/11
  Time: 5:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/include.jsp"/>

<html>
<head><title>Simple jsp page</title>

    <link rel="stylesheet" type="text/css"
    href="../js/extjs/resources/css/ext-all.css" />
    <script type="text/javascript" src="../js/extjs/adapter/ext/ext-base.js">
    </script>
    <script type="text/javascript" src="../js/extjs/ext-all-debug.js">
    </script>
    <%--<script type="text/javascript" src="grid.js"/>--%>
</head>
<body>

<script type="text/javascript">
    var mockData = [
    ['one', 1],
    ['two', 2],
    ['three', 3],
    ['four', 4],
    ['five', 5],
    ['six', 6],
    ['seven', 7],
    ['eight', 8]
];

var store = new Ext.data.ArrayStore({
    data: mockData,
    fields: ['name', 'type' ]
});
    //store.setDefaultSort('name', 'DESC');
    //store.reload();
var columnModel = new Ext.grid.ColumnModel([
        { header: 'name', width: 100, dataIndex: 'name', sortable:true, id: 'name' },
        { header: 'type', width: 100, dataIndex: 'type', sortable:true, id: 'type' }
]);

Ext.onReady(function(){
    var grid = new Ext.grid.GridPanel({
        id: 'mygrid',
        title: 'Numbers',
        store: store,
        columns: [
            { header: 'name', width: 100, dataIndex: 'name', sortable:true, id: 'name' },
            { header: 'type', width: 100, dataIndex: 'type', sortable:true, id: 'type' }
        ],
        renderTo: Ext.getBody(),
        width: 200,
        stripeRows: true,
        autoHeight: true

    });

    Ext.util.Observable.capture(Ext.getCmp('mygrid'), console.info);


    /*handleSortChange: function(grid, sortInfo){
        console.log(sortInfo);

        Ext.Ajax.request({ url:'mockajax.jsp',
            success: function(a,b){
                Ext.MessageBox.alert("Status", "Done")
            },
            failure: function(a,b){
               Ext.MessageBox.alert("Status", "Failed!")
            }
        });

    }

    handleViewReady: function(grid){
        console.log(grid);

    }*/

    /*grid.on(
    {
        'sortchange' : { fn: handleSortChange },
        'viewready' : { fn: handleViewReady }
    }
            );*/

    grid.on('sortchange', function(g, info){
        console.log(info)

        Ext.Ajax.request({ url:'mockajax.jsp',
            success: function(a,b){
                //Ext.MessageBox.alert("Status", "Done")
            },
            failure: function(a,b){
               //Ext.MessageBox.alert("Status", "Failed!")
            }
        });
    });

    grid.on('viewready', function(g) {
        g.getStore().setDefaultSort('name', 'DESC');
        g.getStore().loadData(mockData); //trigger reload with the default sort order
        //g.getStore().reload(); would cause a 'this.proxy is undefined' error for local mode, use loadData instead
        //g.getStore().loadData(store.data); //trigger reload with the default sort order
    });



    /*new Ext.Window({
        items: grid,
        width: 500,
        height: 600
    }).show();*/
});
</script>
</body>



</html>