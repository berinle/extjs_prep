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
            border:false,
			flex: 1
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
            border:false,
			flex: 1

        });


        var fp = new Ext.form.FormPanel({
            title: 'Data Filter',
            renderTo: Ext.getBody(),
            width: '35%',
//            autoHeight:true,
            height:350,
            collapsible: true,
            closable: true,
            stripeRows: true,
            layout:'hbox',
            html: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',

            layoutConfig: {padding:'0', align:'top'},
            defaults:{margins: '0'},
            items: [
                screenedGrid,
                viewableGrid
            ],
            buttons: [{ text: 'ACCEPT' }]
        });

        /*new Ext.Window({
            //title: 'mywin',
//            autoHeight: true,
//            height: 300,
            width: 300,
            layout: 'fit',
            border: false,
            items: [ fp ],
            renderTo: Ext.getBody()
        }).show();*/

    });

})();