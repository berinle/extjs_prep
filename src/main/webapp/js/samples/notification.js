(function(){

    Ext.onReady(function(){

        Ext.QuickTips.init();

        var dummyScreenedData = [
            ['field1'],['field2'],['field3']
        ];

        var screenedStore = new Ext.data.ArrayStore({
            fields: ['fieldName']
        });
        screenedStore.loadData(dummyScreenedData);

        var screenedGrid = new Ext.grid.GridPanel({
            store: screenedStore,
            columns: [{header:'Screened', width:200 /*autoWidth:true*/}],
            autoHeight:true,
            border:false
        });

        var dummyViewableData = [
            ['field9'],['field8']//,['field7']
        ];

        var viewableStore = new Ext.data.ArrayStore({
            fields: ['fieldName']
        });
        viewableStore.loadData(dummyViewableData);

        var viewableGrid = new Ext.grid.GridPanel({
            store: viewableStore,
            columns: [{header:'Viewable', width:200}],
//            height:100,
            autoHeight:true,
            border:false

        });


        new Ext.form.FormPanel({
            title: 'Data Filter',
            renderTo: Ext.getBody(),
            width: '30%',
//            autoHeight:true,
            height:150,
            collapsible: true,
            layout:'hbox',

            layoutConfig: {padding:'0', align:'top'},
            defaults:{margins: '0'},
            items: [
                screenedGrid,
                viewableGrid
            ],
            buttons: [{ text: 'ACCEPT' }]
        });

    });

})();