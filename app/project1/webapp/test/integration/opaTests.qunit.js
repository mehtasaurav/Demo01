sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'project1/test/integration/FirstJourney',
		'project1/test/integration/pages/StationeryList',
		'project1/test/integration/pages/StationeryObjectPage'
    ],
    function(JourneyRunner, opaJourney, StationeryList, StationeryObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('project1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheStationeryList: StationeryList,
					onTheStationeryObjectPage: StationeryObjectPage
                }
            },
            opaJourney.run
        );
    }
);