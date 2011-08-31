(function(){
    Ext.ns("sample.jrock.filter");
    Ext.QuickTips.init();

    var FILTER = sample.jrock.filter;

/*
    FILTER.samplePanel = Ext.extend(Ext.FormPanel, {
        title: 'Custom Panel',
        autoHeight:true,
        width: 80,
        border: true

    });
*/
    var aDs = [];
    var bDs = [];

    FILTER.samplePanel = new Ext.form.FormPanel({
        title: 'Custom Panel',
        autoHeight:true,
        width: '80%',
//        border: true,
        renderTo: 'filter2',
        items:[
            {
                xtype:'itemselector',
                name:'itemselector',
                fieldLabel: '',
                imagePath:'../js/ext/examples/ux/images',
                multiselects:[
                    {
                        legend:'Screened',
                        width:200,
                        height:200,
                        store:[],
                        displayField:'fieldName',
                        valueField:'fieldId'
                    },
                    {
                        legend:'Viewable',
                        width:200,
                        height:200,
                        store:[],
                        displayField:'fieldName',
                        valueField:'fieldId'
                    }
                ]
            }
        ],
        buttons:[
            {text: 'Tickle'}
        ]


    });

    Ext.reg('sample.jrock.filter.panel', FILTER.samplePanel);
})();