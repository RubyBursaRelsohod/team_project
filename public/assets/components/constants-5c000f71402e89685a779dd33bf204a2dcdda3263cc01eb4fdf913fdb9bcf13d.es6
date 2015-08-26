'use strict';

var Сonsts = (function () {

    var sideNavbarItems = ['Welcome', 'Dev Status', 'FAQ', 'Our Team'];

    var description = {
        title: 'Welcome to the Symphony Store!',
        text: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe aut sint nobis quia error ut, ex, modi, nihil cum consequuntur quis dicta ab! Aperiam delectus rem, at eaque culpa repellat dolorum dignissimos iste, placeat et incidunt nesciunt doloribus deserunt id cumque nulla quos perferendis. Enim, excepturi! Sapiente consectetur, accusantium nesciunt aspernatur officia corporis impedit iure earum maxime deleniti quod. Debitis illum repellat officiis, molestias, laudantium consectetur eligendi! Voluptas iste tempore consectetur, magnam quisquam pariatur quas ab, accusantium error architecto quam explicabo distinctio ipsam! Omnis numquam facere facilis, quam magni ex optio illum. Nam alias inventore autem. Sit qui quasi maiores.'
    };

    var mockQuestions = [{
        title: 'Question 1. How are you man?',
        text: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit repellendus molestiae quasi hic id consequatur perferendis excepturi vero autem rem necessitatibus sunt nostrum possimus magnam animi architecto nulla, aperiam deserunt!'
    }, {
        title: 'Question 2. How was your day?',
        text: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit repellendus molestiae quasi hic id consequatur perferendis excepturi vero autem rem necessitatibus sunt nostrum possimus magnam animi architecto nulla, aperiam deserunt!'
    }, {
        title: 'Question 3. How are you today?',
        text: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit repellendus molestiae quasi hic id consequatur perferendis excepturi vero autem rem necessitatibus sunt nostrum possimus magnam animi architecto nulla, aperiam deserunt!'
    }];

    return {
        sideNavbarItems: sideNavbarItems,
        description: description,
        questions: mockQuestions
    };
})();