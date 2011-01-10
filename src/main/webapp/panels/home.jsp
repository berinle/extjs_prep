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

            var win = new Ext.Window({
                id : "mywin",
                height: 400,
                width: 400,
                items: [
                        panel1,
                        panel2
                ]
                
            });

            win.show();
        }
    </script>
</head>
<a href="#" onclick="popUpWindow()">click me</a>

