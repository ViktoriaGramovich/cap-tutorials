sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'authors/uiauthors/test/integration/FirstJourney',
		'authors/uiauthors/test/integration/pages/AuthorsList',
		'authors/uiauthors/test/integration/pages/AuthorsObjectPage',
		'authors/uiauthors/test/integration/pages/BooksObjectPage'
    ],
    function(JourneyRunner, opaJourney, AuthorsList, AuthorsObjectPage, BooksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('authors/uiauthors') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheAuthorsList: AuthorsList,
					onTheAuthorsObjectPage: AuthorsObjectPage,
					onTheBooksObjectPage: BooksObjectPage
                }
            },
            opaJourney.run
        );
    }
);