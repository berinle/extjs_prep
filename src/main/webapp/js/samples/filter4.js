Ext.onReady(function() {
    Ext.QuickTips.init();
    Ext.form.Field.prototype.msgTarget = 'side';

    Ext.ns("com.jrock.filter");
    var DF = com.jrock.filter;

    var a1 = [];
    var a2 = [];

    var leftDs = [];
    var rightDs = [];

    var left = [
        {value:'1',text:'a'},
        {value:'2',text:'b'},
        {value:'3',text:'c'}
    ];
    var right = [
        {value:'4',text:'d'}
    ];

    DF.setuppanel = Ext.extend(Ext.form.FormPanel, {
        title:'Data Filter',
        width:600,
        id:'setuppanel',

        constructor: function() {
            console.log("constructor() called.");
            var testA = null, testB = null;

            Ext.apply(this, {
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
                                store:testA,
                                displayField:'text',
                                valueField:'value'
                            },
                            {
                                legend:'Viewable',
                                width:200,
                                height:200,
                                store:testB,
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

            DF.setuppanel.superclass.constructor.apply(this, arguments);
        },

        someFunc: function(){
            console.log("someFunc() called");
            Ext.Ajax.request({

                url: 'query.jsp',
                success: function(res) {
                    var obj = Ext.decode(res.responseText);
                    for (var i = 0; i < obj.length; i++) {
                        a1.push(obj[i]);
                    }

                    testA = new Ext.data.JsonStore({
                        data: a1
                        ,root: ''
                        ,autoDestroy:true
                        ,fields:['value','text']
                    });

                    testB = new Ext.data.JsonStore({
                        data: right
                        ,root: ''
                        ,autoDestroy:true
                        ,fields:['value','text']
                    });
                },
                failure: function(res) {
                }

            });
        },

        initComponent: function() {
            console.log("initComponent() called.");
            DF.setuppanel.superclass.initComponent().apply(this, arguments);

//            Ext.util.Observable.capture(Ext.getCmp('setuppanel'), console.info);
//            Ext.util.Observable.capture(DF.setuppanel, console.info);
//            DF.setuppanel.on('beforerender', this.someFunc(), this);
        }

    });

//    someFunc = function(){
//    };

//    DF.setuppanel.on('eventName', someFunc, this);



    Ext.reg('com.jrock.filter.setuppanel', DF.setuppanel);

});