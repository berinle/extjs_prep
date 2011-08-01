<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head><title>Report Panel</title>
        <link rel="stylesheet" type="text/css"
    href="../js/extjs/resources/css/ext-all.css" />
    <script type="text/javascript" src="../js/extjs/adapter/ext/ext-base.js">
    </script>
    <script type="text/javascript" src="../js/extjs/ext-all-debug.js">
    </script>

    <script type="text/javascript">

        Ext.onReady(function() {

            var store = new Ext.data.JsonStore({
                url: 'get-images.php',
                root: 'images',
                fields: [
                    'name', 'url',
                    {name:'size', type: 'float'},
                    {name:'lastmod', type:'date', dateFormat:'timestamp'}
                ]
            });
            store.load();

            var tpl = new Ext.XTemplate(
                    '<tpl for=".">',
                    '<div class="thumb-wrap" id="{name}">',
                    '<div class="thumb"><img src="{url}" title="{name}"></div>',
                    '<span class="x-editable">{shortName}</span></div>',
                    '</tpl>',
                    '<div class="x-clear"></div>'
            );

            var panel = new Ext.Panel({
                id:'images-view',
                frame:true,
                width:535,
                autoHeight:true,
                collapsible:true,
                layout:'fit',
                title:'Simple DataView',

                items: new Ext.DataView({
                    store: store,
                    tpl: tpl,
                    autoHeight:true,
                    multiSelect: true,
                    overClass:'x-view-over',
                    itemSelector:'div.thumb-wrap',
                    emptyText: 'No images to display'
                })
            });
            panel.render(document.body);

        });

    </script>

</head>

<body>
<!-- filled in by ExtJS -->
</body>



</html>