<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head><title>Report Panel</title>
        <link rel="stylesheet" type="text/css"
    href="../js/extjs/resources/css/ext-all.css" />
    <script type="text/javascript" src="../js/extjs/adapter/ext/ext-base.js">
    </script>
    <script type="text/javascript" src="../js/extjs/ext-all-debug.js">
    </script>


    <%--<link rel="stylesheet" type="text/css"
          href="http://extjs-public.googlecode.com/svn/tags/extjs-3.3.1/release/resources/css/ext-all.css">
    <script type="text/javascript"
            src="http://extjs-public.googlecode.com/svn/tags/extjs-3.3.1/release/ext-all-debug.js"></script>
    <script type="text/javascript"
            src="http://extjs-public.googlecode.com/svn/tags/extjs-3.3.1/release/adapter/ext/ext-base.js"></script>--%>

    <style type="text/css">

        .row {
            border: 1px #999999 solid;
            margin: 3px;
            -moz-border-radius: 5px;
            -webkit-border-radius: 5px;
            /*background-color: #ffffcc;*/
            padding-bottom: 3px;
        }

        .rowHeader {
            font-weight: bold;
            font-size: larger;
            padding-left: 5px;
        }

        .rowDesc {
            padding-left: 15px;
            display: block;
        }

        .row:hover {
            background-color: ivory;
        }
    </style>

    <script type="text/javascript">

        Ext.onReady(function() {

            var reportData = [
                    ['Applicant Roster', 'This report contains the latest application status and status ' +
                        'date as well as the applicant\'s medical school and most recent residency, where applicable'],
                    ['Applicants Applying as a Couple', 'This report lists applicants who have indicated they want to match as a couple, including ' +
                            'the partner\'s name and specialities to which the partner is applying'],
                    ['Missing Documents', 'The Missing Documents report is a report that displays applicants in the current filter ' +
                            'along with a list of their missing standard ERAS documents'],
                    ['Withdrawn Applicants', 'The Missing Documents report displays all applicants who have an application status of ' +
                            '\'Withdrawn\' by the program or \'Withdrawn\' by the Applicant'],
                    ['Applicants Selected to Honor Societies', 'This report will display all applicants who were selected to an honor society'],
                    ['Applicant Summary', 'This report provides a one page summary of the applicants\' credentials']
            ];

            var store = new Ext.data.ArrayStore({
                // store configs
                autoDestroy: true,
                storeId: 'myStore',
                data: reportData,
                // reader configs
                idIndex: 0,
                fields: [
                    'title',
                    'description'
                ]
            });

            //store.load();

            var tpl = new Ext.XTemplate(
                    '<tpl for=".">',
                    '<div class="row">',
                    '<span class="rowHeader">{title}</span>',
                    '<span class="rowDesc">{description}</span></div>',
                    '</tpl>',
                    '<div class="x-clear"></div>'
            );

            var dataView = new Ext.DataView({
                store: store,
                tpl: tpl,
                autoHeight:true,
                multiSelect: false,
                overClass:'x-view-over',
                itemSelector:'div.row',
                emptyText: 'No images to display',
                listeners: {
                    click: function(thisDiv, index) {
                        var record = thisDiv.store.getAt(index);
                        //record.id
                         console.log("You selected report " + record.data.title);
                         Ext.Msg.show({
                         title: 'Running report...',
                         msg: "You selected report " + record.id,
                         width: 300,
                         buttons: Ext.Msg.OK,
                         icon: Ext.Msg.INFO
                         });
                    }
                }

            });

            var panel = new Ext.Panel({
                id:'bayo-view',
                frame:true,
                width:535,
                autoHeight:true,
                collapsible:false,
                layout:'fit',
                title:'Reports DataView',
                items: dataView
            });
            panel.render(document.body);

        });

    </script>

</head>

<body>
<!-- filled in by ExtJS -->
</body>



</html>