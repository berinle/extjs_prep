<head>
    <link rel="stylesheet" type="text/css"
    href="../js/extjs/resources/css/ext-all.css" />
    <script type="text/javascript" src="../js/extjs/adapter/ext/ext-base.js">
    </script>
    <script type="text/javascript" src="../js/extjs/ext-all-debug.js">
    </script>

    <script type="text/javascript">
        Ext.QuickTips.init();

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

            var grid1Store = new Ext.data.ArrayStore ({
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
                //typeAhead: true,
                mode: 'local'
            }


            var theSortingTableStore = new Ext.data.ArrayStore({
                data: [
                        ['Ascending'],['Descending']
                ],
                fields: ['tableSorting']
            });

            var comboBox = new Ext.form.ComboBox({
                id: 'orderCombo',
                fieldLabel: 'Table Sorting',
                itemCls: 'x-check-group-alt',
                name: 'tableSorting',
                editable: false,
                triggerAction: 'all',
                valueField: 'tableSorting',
                //displayField: 'optionLabel',
                displayField: 'tableSorting',
                hiddenName: 'tableSorting',
                store: theSortingTableStore,
                allowBlank: false,
                blankText:'This field is required',
                emptyText: 'Please Select One',
                width: 100,
                mode: 'local'
            });


            var fpItems = [
                {
                    fieldLabel: 'Alpha only',
                    allowBlank: false,
                    emptyText: 'This field is empty!',
                    maskRe: /[a-z]/i
                },
                {
                    fieldLabel: 'Simple 3 to 7',
                    allowBlank: false,
                    minLength: 3,
                    maxLength: 7
                }
            ];


            /*var fp = new Ext.form.FormPanel({
                renderTo: Ext.getBody(),
                width: 400,
                height: 160,
                title: 'Exercising textfields',
                frame: true,
                bodyStyle: 'padding: 6px',
                labelWidth: 126,
                defaultType: 'textfield',
                defaults : {
                    msgTarget : 'side',
                    anchor : '-20'
                },
                items : fpItems
            });*/



            var fp = new Ext.form.FormPanel({
                renderTo: Ext.getBody(),
                width: 400,
                height: 300,
                title: 'Exercising textfields',
                frame: true,
                bodyStyle: 'padding: 6px',
                labelWidth: 126,
                defaultType: 'textfield',
                defaults : {
                    msgTarget : 'side',
                    anchor : '-20'
                },
                items : [grid1Combo, comboBox]
            });

            //using form panel
            /*var win = new Ext.Window({
                id : "mywin",
                height: 400,
                width: 400,
                items: [
                        //panel1,
                        //panel2,
                        grid1Combo,
                        comboBox
                ]
                
            });

            win.show();*/
        }
    </script>
</head>
<a href="#" onclick="popUpWindow()">click me</a>

