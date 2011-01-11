<head>
    <link rel="stylesheet" type="text/css"
    href="../js/extjs/resources/css/ext-all.css" />
    <script type="text/javascript" src="../js/extjs/adapter/ext/ext-base.js">
    </script>
    <script type="text/javascript" src="../js/extjs/ext-all-debug.js">
    </script>

    <script type="text/javascript">
        Ext.onReady(function () {
            Ext.QuickTips.init();

            var radios = [
                {
                    xtype: 'radio',
                    fieldLabel: 'Publication Grid Sorting',
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

            //create a form
            var fp = {
                xtype       : 'form',
                labelWidth  : 110,
                items       : radios,
                frame       : true
            }

            new Ext.Window({
                title: '',
                layout: 'fit',
                height: 120,
                width: 300,
                items: fp
            }).show();
        });

    </script>
</head>
<body>
<h4>Home Page</h4>
</body>

