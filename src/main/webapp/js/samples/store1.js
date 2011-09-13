(function(){
	Ext.onReady(function(){
		
		var store = new Ext.data.ArrayStore({
			fields: ['name']
		});
		
		var data = [
			['john'],['lisa'],['rasheed']
		];
		store.loadData(data);
		
		var grid = new Ext.grid.GridPanel({
			store: store,
			columns: [{header:'Column1', width:200}],
            autoHeight:true,
            border:false
		});
		
		buildItems = function(){
			
			var items = new Array();
			items.push({
				title: 'tab 1',
				items: [grid]
			});
			
			var toggle = false;
			if(toggle){
				items.push({
					title: 'tab 2',
					html: 'Life is good'
				});
			}
			
			return items;
		};
		
		new Ext.TabPanel({
			width: "100%",
			height: 350,
			activeTab: 0,
			renderTo: Ext.getBody(),
			items: buildItems()
		});
	});
})();