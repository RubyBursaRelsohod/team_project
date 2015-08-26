'use strict';

$(document).ready(function () {

    // Query the .about-page which is the host of all other components.
    var $aboutPage = $('.container .about-page .row:first-child');

    // Add a div to .about-page, right next to navigation elements.
    $aboutPage.append("<div class='col-sm-10 col-md-10' id='about-content' />");
    var $aboutContent = $aboutPage.find('#about-content')[0];

    // Initial content load
    // React.render(<Description />, $aboutContent);
    React.render(React.createElement(Team, { members: Сonsts.getUsers(Сonsts.team) }), $aboutContent);

    var $navItems = $aboutPage.find('#about-nav > li.nav-list-item a');

    // Handle clicks on navigation items.
    $navItems.click(handleNavItemClick);

    function handleNavItemClick() {

        switch (this.innerHTML) {
            case 'Welcome':
                React.render(React.createElement(Description, null), $aboutContent);
                break;

            case 'Dev Status':
                React.render(React.createElement(DevStatus, null), $aboutContent);
                break;

            case 'FAQ':
                React.render(React.createElement(FAQ, null), $aboutContent);
                break;

            case 'Our Team':
                React.render(React.createElement(Team, {
                    members: Сonsts.getUsers(Сonsts.team) }), $aboutContent);
                break;

            default:
                React.render(React.createElement(Description, null), $aboutContent);
                break;
        }
    }
});
