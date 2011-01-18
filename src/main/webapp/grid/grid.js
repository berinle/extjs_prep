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

Ext.onReady(function(){
    var grid = new Ext.grid.GridPanel({
        title: 'Numbers',
        store: store,
        columns: [
            { header: 'name', width: 30, dataIndex: 'name', sortable:true },
            { header: 'type', width: 30, dataIndex: 'type', sortable:true }
        ],
        renderTo: Ext.getBody(),
        width: 500,
        height: 600
    });

    new Ext.Window({
        items: grid,
        width: 500,
        height: 600
    }).show();
});