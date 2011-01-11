<%--
  Created by IntelliJ IDEA.
  User: berinle
  Date: 1/11/11
  Time: 1:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
        <link rel="stylesheet" type="text/css"
    href="../js/extjs/resources/css/ext-all.css" />
    <script type="text/javascript" src="../js/extjs/adapter/ext/ext-base.js">
    </script>
    <script type="text/javascript" src="../js/extjs/ext-all-debug.js">
    </script>
</head>
<body>
<script type="text/javascript">
Ext.onReady(function() {
Ext.QuickTips.init();

var radios = [
	{
		xtype      : 'radio',
		fieldLabel : "Which do you own",
		boxLabel   : 'Cat',
		name       : 'pet',
		inputValue : 'cat'
	},
	{
		xtype          : 'radio',
		fieldLabel     : "",
		labelSeparator : ' ',
		boxLabel       : 'Dog',
		name           : 'pet',
		inputValue     : 'dog'
	},
	{
		xtype          : 'radio',
		fieldLabel     : "",
		labelSeparator : ' ',
		boxLabel       : 'Fish',
		name           : 'pet',
		inputValue     : 'fish'
	},
	{
		xtype          : 'radio',
		fieldLabel     : "",
		labelSeparator : ' ',
		boxLabel       : 'Bird',
		name           : 'pet',
		inputValue     : 'bird'
	}
]

var fp = {
	xtype      : 'form',
	labelWidth : 110,
	items      : radios,
	frame      : true
}

new Ext.Window({
	title   : '',
	layout  : 'fit',
	height  : 90,
	width   : 320,
	borde   : false,
	items   : fp
}).show();

});
</script>
</body>
</html>