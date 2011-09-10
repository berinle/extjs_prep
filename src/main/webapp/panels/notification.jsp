<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Report Panel</title>

    <link rel="stylesheet" type="text/css" href="../js/ext/resources/css/ext-all.css" />
    <script type="text/javascript" src="../js/ext/ext-base.js"></script>
    <script type="text/javascript" src="../js/ext/ext-all-debug.js"></script>

    <script type="text/javascript" src="../js/ext/examples/ux/MultiSelect.js"></script>
    <script type="text/javascript" src="../js/ext/examples/ux/ItemSelector.js"></script>


    <script type="text/javascript" src="../js/samples/notification1.js"></script>

    <style type="text/css">
        body {
            font: 'arial 10px';
        }

        #notification {
            display: block;
            text-align: center;
        }

		#sgrid .x-grid3-row, #vgrid .x-grid3-row {
			width: 170px !important;
		}
		
		#msg { 
		    float: left;
		    width: 350px;
            margin-bottom: 10px;
		}
		#nid { 
			float: left;
		    margin-right: 5px;
			margin-top: 15%;
            padding-left: 5px;
		    width: 15px;
		}
		
    </style>

</head>

<body>

<div id="notification"></div>

</body>



</html>