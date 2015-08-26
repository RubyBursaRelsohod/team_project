
$(document).ready( () => {

    // Query the .about-page which is the host of all other components.
    let $aboutPage = $('.container .about-page .row:first-child');

    // Add a div to .about-page, right next to navigation elements.
    $aboutPage.append("<div class='col-sm-10 col-md-10' id='about-content' />");
    let $aboutContent = $aboutPage.find('#about-content')[0];

    // Initial content load
    React.render(<Description />, $aboutContent);

    let $navItems = $aboutPage.find('#about-nav > li.nav-list-item a');

    // Handle clicks on navigation items.
    $navItems.click(handleNavItemClick)

    function handleNavItemClick() {

        switch(this.innerHTML) {
            case 'Welcome':
                React.render(<Description />, $aboutContent);
                break;

            case 'Dev Status':
                React.render(<DevStatus />, $aboutContent);
                break;

            case 'FAQ':
                React.render(<FAQ />, $aboutContent);
                break;

            case 'Our Team':
                React.render(<Team
                    members={Сonsts.getUsers(Сonsts.team)} />, $aboutContent);
                break;

            default:
                React.render(<Description />, $aboutContent);
                break;
        }
    }
});
