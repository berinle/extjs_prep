(function(){

    Ext.onReady(function(){

        Ext.QuickTips.init();

        Ext.ns("jrock.samples");
        var SAMPLES = jrock.samples;

        var dummyScreenedData = [
            ['field1'],['field2'],['field3']
        ];

        var screenedStore = new Ext.data.ArrayStore({
            fields: ['fieldName']
        });
        screenedStore.loadData(dummyScreenedData);

        var screenedGrid = new Ext.grid.GridPanel({
            store: screenedStore,
            columns: [{header:'Screened', width:200 /*autoWidth:true*/, id:'sheader'}],
            autoHeight:true,
            border:false,
			flex: 1, stripeRows:true,
			id:'sgrid'
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
            autoHeight:true,
            border:false,
			flex: 1, stripeRows:true,
			id:'vgrid'

        });


		SAMPLES.formpanel = Ext.extend(Ext.form.FormPanel, {
			
            title: 'Data Filter',
            width: '35%',
            height:350,
            collapsible: true,
            closable: true,
            stripeRows: true,
            layout:'hbox',
            id: 'fp',

            layoutConfig: {padding:'0', align:'stretch'},
            defaults:{margins: '0'},

			constructor: function(){
				Ext.apply(this, {	
	            	items: [
		                screenedGrid,
		                viewableGrid
		            ],
		            buttons: [{ text: 'ACCEPT' }]
			
				});
				
				SAMPLES.formpanel.superclass.constructor.apply(this, arguments);

			}, //end constructor
			
			initComponent: function(){
				SAMPLES.formpanel.superclass.initComponent.apply(this, arguments);
                this.html = this.getDisplay();
			},
			
			foo: function(){
				//do something useful
			},

            getDisplay: function(){
                console.log(" getDisplay() called.");
                //get the content html
                return '<img src="../images/notification.png" alt="notify" id="nid">' +
                    '<div id="msg">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor' +
                    ' incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation' +
                    ' ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit ' +
                    'in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat' +
                    ' non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>';
            }
			
        });

        Ext.reg("customformpanel", SAMPLES.formpanel);

		new Ext.Window({
			title: 'mywin',
            layout: 'fit',
            width: 400,
            height: 350,
			items: [ { xtype: 'customformpanel'} ]
		}).show();

        new Ext.ToolTip({target:'nid', html:'Some useful message should go here. Make it meaningful!'});

    });

})();