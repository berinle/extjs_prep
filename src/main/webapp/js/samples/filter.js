Ext.onReady(function(){
    Ext.QuickTips.init();
    Ext.form.Field.prototype.msgTarget = 'side';


    //todo grab from database
    var filterDs = new Ext.data.ArrayStore({
        data: [
            [1, 'Birth Place'],
            [2, 'Citizenship'],
            [3, 'Gender'],
            [4, 'Felony'],
            [5, 'Conviction'],
            [6, 'Misdemeanor'],
            [7, 'Limitations'],
            [8, 'Photograph']
        ],
        fields: ['value','text'],
        sortInfo:{ field:'value', direction:'ASC' }

    });

    var filterForm = new Ext.form.FormPanel({
        title:'Data Filter',
        width:600,
        renderTo:'filterSelector',
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
                        store:filterDs,
                        displayField:'text',
                        valueField:'value'
                    },
                    {
                        legend:'Viewable',
                        width:200,
                        height:200,
                        store:[]
                        /*,tbar:[{
                            text:'clear',
                            handler:function(){
                                filterForm.getForm().findField('itemselector').reset();
                            }
                        }]*/

                    }]
            } ],
        buttons: [{
            text: 'Apply',
            handler:function(){
                if(filterForm.getForm().isValid()){
                    console.log('submitted values: ' + filterForm.getForm().getValues(true));
                }
            }}, {
            text: 'Cancel', handler: function(){ }
        }]

    });

});