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

        #reportRow {
            /*border: 1px solid #999999;*/
            border-bottom: 1px solid;
            border-bottom-color: #999999;
            padding: 5px 5px 5px 5px;
        }

        #reportRow .row {
            border: 1px #999999 solid;
            margin: 3px;
            -moz-border-radius: 5px;
            -webkit-border-radius: 5px;
            background-color: #ffffcc;
            padding-bottom: 3px;
        }

        #reportRow .rowHeader {
            font-weight: bold;
            font-size: larger;
        }

        #reportRow .rowDesc {
            padding-left: 15px;
        }

        .highlight {
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
                    '<div class="row" id="reportRow">',
                    '<div class="rowHeader">{title}</div>',
                    '<span class="rowDesc">{description}</span></div>',
                    '</tpl>',
                    '<div class="x-clear"></div>'
            );

            var panel = new Ext.Panel({
                id:'bayo-view',
                frame:true,
                width:535,
                autoHeight:true,
                collapsible:true,
                layout:'fit',
                title:'Reports DataView',

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