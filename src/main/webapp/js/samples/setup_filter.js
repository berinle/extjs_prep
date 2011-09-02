(function(){

    Ext.onReady(function() {
        var a = new Ext.form.FormPanel({
//            renderTo:'filter3' ,
            id:'helloCmp'
            ,border:true
            ,autoHeight:true
            ,items:[
                {xtype:'com.jrock.filter.setuppanel'}
//                { xtype: 'textfield' }
            ]
        });

        /*Ext.util.Observable.capture(Ext.getCmp('helloCmp'), console.info);
        console.log("inner::inner works...");

        a.on('afterrender', function(){ console.log("yea baby!")}, this);
        a.on('beforerender', function(){ console.log("b4 yea baby!")}, this);*/

        a.render('filter3');

        //a.fireEvent('lalala', {a:'bang'})

    });


})();