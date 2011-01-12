<head>
    <link rel="stylesheet" type="text/css"
    href="../js/extjs/resources/css/ext-all.css" />
    <script type="text/javascript" src="../js/extjs/adapter/ext/ext-base.js">
    </script>
    <script type="text/javascript" src="../js/extjs/ext-all-debug.js">
    </script>

    <script type="text/javascript">
        Ext.onReady(function (){
            Ext.QuickTips.init();

            //publication grid
            var publicationGridColumnsList = [['Publication Type'],['Title'],['Publication'],['Authors'],['Date'],['PMID'],['Status']];

            var publicationGridDS = new Ext.data.ArrayStore({
                data: publicationGridColumnsList,
                fields: ['name']
            });

            var publicationFieldSet = {
                xtype: 'fieldset',
                border: true,
                title: 'Publication Grid',

                defaults: {
                    anchor: '-10',
                    allowBlank: false
                },
                items: [
                    //combo box
                    {
                        xtype: 'combo',
                        fieldLabel: 'Sort Column',
                        store: publicationGridDS,
                        mode: 'local',
                        name: 'name',
                        displayField: 'name',
                        valueField: 'name',
                        editable: false

                    },
                    //radio button
                    {
                        xtype: 'radio',
                        fieldLabel: 'Direction',
                        labelSeparator: '',
                        boxLabel: 'Ascending',
                        name: 'publicationSort',
                        inputValue: 'ASC'
                    },

                    {
                        xtype: 'radio',
                        fieldLabel: '',
                        labelSeparator: '',
                        boxLabel: 'Descending',
                        name: 'publicationSort',
                        inputValue: 'DESC'

                    }
                ]
            }


            //history grid
            var scoreHistoryColumnsList = [['User Name'],['Category'],['Score Name'],['Old Value'],['New Value'],['Date']];

            var scoreHistoryGridDS = new Ext.data.ArrayStore({
                data: scoreHistoryColumnsList,
                fields: ['name']
            });

            var scoreHistoryFieldSet = {
                xtype: 'fieldset',
                border: true,
                title: 'Score History Grid',

                defaults: {
                    anchor: '-10',
                    allowBlank: false
                },
                items: [
                    //combo box
                    {
                        xtype: 'combo',
                        fieldLabel: 'Sort Column',
                        store: scoreHistoryGridDS,
                        mode: 'local',
                        name: 'name',
                        displayField: 'name',
                        valueField: 'name',
                        editable: false

                    },
                    //radio button
                    {
                        xtype: 'radio',
                        fieldLabel: 'Direction',
                        labelSeparator: '',
                        boxLabel: 'Ascending',
                        name: 'scoreHistorySort',
                        inputValue: 'ASC'
                    },

                    {
                        xtype: 'radio',
                        fieldLabel: '',
                        labelSeparator: '',
                        boxLabel: 'Descending',
                        name: 'scoreHistorySort',
                        inputValue: 'DESC'

                    }
                ]
            }



            //create a form
            var fp = {
                xtype: 'form',
                items: [publicationFieldSet, scoreHistoryFieldSet],
                frame: true,
                url: 'home/userpreference/savePreferences',
                id: 'preferencesFP'
            }

            var myWin = new Ext.Window({
                title: 'Preferences',
                layout: 'fit',
                height: 300,
                //autoHeight: true,
                width: 300,
                background: 'transparent',
                items: fp,
                closeAction: 'hide',
                buttons: [
                    {
                        text: 'Save',
                        handler: function(){}
                    },
                    {
                        text: 'Close',
                        handler: function(){ myWin.hide(); }
                    }
                ]
            }).show();
        });

    </script>
</head>
<body>
<h4>Home Page</h4>
</body>

