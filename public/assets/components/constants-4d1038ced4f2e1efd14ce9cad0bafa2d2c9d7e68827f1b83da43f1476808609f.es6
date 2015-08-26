var Сonsts = (function () {

    var sideNavbarItems = ['Welcome', 'Dev Status', 'FAQ', 'Our Team'];

    var description = {
        title: 'Welcome to the Symphony Store!',
        text: [{
            subtitle: 'About the Store',
            body: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe aut sint nobis quia error ut, ex, modi, nihil cum consequuntur quis dicta ab! Aperiam delectus rem, at eaque culpa repellat dolorum dignissimos iste, placeat et incidunt nesciunt doloribus deserunt id cumque nulla quos perferendis. Enim, excepturi! Sapiente consectetur, accusantium nesciunt aspernatur officia corporis impedit iure earum maxime deleniti quod. Debitis illum repellat officiis, molestias, laudantium consectetur eligendi! Voluptas iste tempore consectetur, magnam quisquam pariatur quas ab, accusantium error architecto quam explicabo distinctio ipsam! Omnis numquam facere facilis, quam magni ex optio illum. Nam alias inventore autem. Sit qui quasi maiores.'
        }, {
            subtitle: 'Delivery Info',
            body: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam numquam consectetur animi autem voluptatum sapiente praesentium perspiciatis ipsam, vel ullam quisquam distinctio, sit soluta iure error nobis enim labore fugiat voluptatem officiis? Cupiditate ipsam ex blanditiis adipisci, aliquid sapiente asperiores.'
        }, {
            subtitle: 'Customer Success Philosophy',
            body: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet recusandae saepe, assumenda provident esse veritatis aspernatur laborum, tenetur et, placeat, ut accusantium sit. Possimus exercitationem at amet vitae voluptatem commodi. Molestiae soluta placeat error. Repellat, vero! Nemo enim quae quisquam accusamus corporis nulla magni iusto possimus, velit, in est tenetur.'
        }]
    };

    function _getUsers(usernames) {
        var users = [];
        usernames.forEach(function (username) {
            var u = $.getJSON('https://api.github.com/users/' + username).done(function (data) {
                u = data;
            });
            users.push(u);
        });
        return users;
    }

    function _getIssues() {
        var issues = $.getJSON('https://api.github.com/repos/RubyBursaRelsohod/team_project/issues?state=all&filter=all').done(function (data) {
            issues = data;
        });
        return issues;
    }

    var team = [{
        username: 'Dioscur',
        full_name: 'Tsivin Dmitriy',
        github_link: 'https://github.com/Dioscur',
        avatar_url: 'https://avatars.githubusercontent.com/u/11578659?v=3'
    }, {
        username: 'eovolkov',
        full_name: 'Evgeniy Volkov',
        github_link: 'https://github.com/eovolkov',
        avatar_url: 'https://avatars.githubusercontent.com/u/9574617?v=3'
    }, {
        username: 'Serg1i',
        full_name: 'Sergey Manannikov',
        github_link: 'https://github.com/Serg1i',
        avatar_url: 'https://avatars.githubusercontent.com/u/6352533?v=3'
    }, {
        username: 'AntonDp',
        full_name: 'Anton Mukhin',
        github_link: 'https://github.com/AntonDp',
        avatar_url: 'https://avatars.githubusercontent.com/u/12658243?v=3'
    }, {
        username: 'yakovenkodenis',
        full_name: 'Denis Yakovenko',
        github_link: 'https://github.com/yakovenkodenis',
        avatar_url: 'https://avatars.githubusercontent.com/u/8517673?v=3'
    }];

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
        questions: mockQuestions,
        team: team,
        getUsers: _getUsers,
        getIssues: _getIssues
    };
})();