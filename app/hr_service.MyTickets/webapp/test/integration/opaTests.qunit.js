sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'hrservice/MyTickets/test/integration/FirstJourney',
		'hrservice/MyTickets/test/integration/pages/TicketList',
		'hrservice/MyTickets/test/integration/pages/TicketObjectPage',
		'hrservice/MyTickets/test/integration/pages/SolutionObjectPage'
    ],
    function(JourneyRunner, opaJourney, TicketList, TicketObjectPage, SolutionObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('hrservice/MyTickets') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheTicketList: TicketList,
					onTheTicketObjectPage: TicketObjectPage,
					onTheSolutionObjectPage: SolutionObjectPage
                }
            },
            opaJourney.run
        );
    }
);