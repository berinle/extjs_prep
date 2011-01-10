<head>
    <link rel="stylesheet" type="text/css"
    href="../js/extjs/resources/css/ext-all.css" />
    <script type="text/javascript" src="../js/extjs/adapter/ext/ext-base.js">
    </script>
    <script type="text/javascript" src="../js/extjs/ext-all-debug.js">
    </script>

    <script type="text/javascript">
        popUpWindow = function(){
            var panel1 = {
                html : "Panel 1",
                id: "panel1",
                frame: true,
                height: 100
            };

            var panel2 = {
                html : "<b>Panel 2</b>",
                id: "panel2",
                frame: true
            };

            //create a data store
            var grid1Store = new Ext.ArrayStore ({
                data: [
                        ['column 1'], ['column 2'], ['column 3'], ['column 4']
                ],
                fields: ['name']

            });

            //
            var grid1Combo = {
                xtype: 'combo',
                fieldLabel: 'Default sort for grid 1',
                store: grid1Store,
                displayField: 'name',
                typeAhead: true,
                mode: 'local'
            }



            var win = new Ext.Window({
                id : "mywin",
                height: 400,
                width: 400,
                items: [
                        //panel1,
                        //panel2,
                        grid1Combo
                ]
                
            });

            win.show();
        }
    </script>
</head>
<a href="#" onclick="popUpWindow()">click me</a>

