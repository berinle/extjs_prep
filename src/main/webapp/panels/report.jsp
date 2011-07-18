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

            var roasterPnl = new Ext.Panel({
                frame: true,
                title: 'Applicant Roster',
                items: [{xtype:'checkbox', boxLabel: 'This report contains the latest application status and status ' +
                        'date as well as the applicant\'s medical school and most recent residency, where applicable', name: 'roaster'}]
            });
            var couplePnl = new Ext.Panel({
                frame: true,
                title: 'Applicants Applying as a Couple',
                items: [{xtype:'checkbox', boxLabel: 'This report lists applicants who have indicated they want to match as a couple, including ' +
                            'the partner\'s name and specialities to which the partner is applying', name: 'couple'}]
            });
            var missingDocPnl = new Ext.Panel({
                frame: true,
                title: 'Missing Documents',
                items: [{xtype:'checkbox', boxLabel: 'The Missing Documents report is a report that displays applicants in the current filter ' +
                            'along with a list of their missing standard ERAS documents', name: 'missingdocs'}]
            });
            var withdrawnPnl = new Ext.Panel({
                frame: true,
                title: 'Withdrawn Applicants',
                items: [{xtype:'checkbox', boxLabel: 'The Missing Documents report displays all applicants who have an application status of ' +
                            '\'Withdrawn\' by the program or \'Withdrawn\' by the Applicant', name: 'withdrawn'}]
            });
            var honorsPnl = new Ext.Panel({
                frame: true,
                title: 'Applicants Selected to Honor Societies',
                items: [{xtype:'checkbox', boxLabel: 'This report will display all applicants who were selected to an honor society', name: 'honor'}]
            });
            var summaryPnl = new Ext.Panel({
                frame: true,
                title: 'Applicant Summary',
                items: [{xtype:'checkbox', boxLabel: 'This report provides a one page summary of the applicants\' credentials' , name: 'summary'}]
            });

            var reportWin = new Ext.Window({
                width: 500,
                height: 370,
                autoScroll: true,
                title: 'View/Print Reports',
                collapsible: false,
                renderTo: Ext.getBody(),
                items: [
                        roasterPnl,
                        couplePnl,
                        missingDocPnl,
                        withdrawnPnl,
                        honorsPnl,
                        summaryPnl
                ],
                buttons: [
                    {
                        text: 'View',
                        handler: function(){ reportWin.hide() }
                    },
                    {
                        text: 'Print',
                        handler: function(){ reportWin.hide() }
                    },
                    {
                        text: 'Close',
                        handler: function(){ reportWin.hide() }
                    }
                ]
            }).show();

        });

    </script>

</head>

<body>
<!-- filled in by ExtJS -->
</body>



</html>