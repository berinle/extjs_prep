Ext.onReady(function(){
    Ext.QuickTips.init();
    Ext.form.Field.prototype.msgTarget = 'side';

    var a1 = [];
    var a2 = [];

    var leftDs = new Ext.data.JsonStore({});
    var rightDs = new Ext.data.JsonStore({});

    var left = [{value:'1',text:'a'},{value:'2',text:'b'},{value:'3',text:'c'}];
    var right = [{value:'4',text:'d'}];


    Ext.Ajax.request({

        url: 'query.jsp',
        success: function(res){
            var obj = Ext.decode(res.responseText);
            for(var i=0; i<obj.length; i++){
                a1.push(obj[i]);
            }


            var d1 = new Ext.data.JsonStore({
                data: a1
                ,root: ''
                ,autoDestroy:true
                ,fields:['value','text']
            });

            var d2 = new Ext.data.JsonStore({
                data: right
                ,root: ''
                ,autoDestroy:true
                ,fields:['value','text']
            });


            var filterForm = new Ext.form.FormPanel({
                title:'Data Filter',
                width:600,
                renderTo:'filter3',
                items:[
                    {
                        xtype:'itemselector',
                        name:'itemselector',
                        fieldLabel:'',
                        imagePath:'../js/ext/examples/ux/images',
                        multiselects:[
                            {
                                legend:'Screened',
                                width:200,
                                height:200,
                                store:d1,
                                displayField:'text',
                                valueField:'value'
                            },
                            {
                                legend:'Viewable',
                                width:200,
                                height:200,
                                store:d2,
                                displayField:'text',
                                valueField:'value'
                            }
                        ]
                    }
                ],
                buttons: [
                    {
                        text: 'Apply',
                        handler:function() {
                            if (filterForm.getForm().isValid()) {
                                console.log('submitted values: ' + filterForm.getForm().getValues(true));
                            }
                        }},
                    {
                        text: 'Cancel', handler: function() {
                    }
                    }
                ]

            });
        },
        failure: function(res){}

    });


});