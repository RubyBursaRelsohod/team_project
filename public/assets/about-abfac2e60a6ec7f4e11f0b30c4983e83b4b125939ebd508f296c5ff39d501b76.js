"use strict";

var _createClass = (function () {
  function defineProperties(target, props) {
    for (var i = 0; i < props.length; i++) {
      var descriptor = props[i];descriptor.enumerable = descriptor.enumerable || false;descriptor.configurable = true;if ("value" in descriptor) descriptor.writable = true;Object.defineProperty(target, descriptor.key, descriptor);
    }
  }return function (Constructor, protoProps, staticProps) {
    if (protoProps) defineProperties(Constructor.prototype, protoProps);if (staticProps) defineProperties(Constructor, staticProps);return Constructor;
  };
})();

var _get = function get(_x, _x2, _x3) {
  var _again = true;_function: while (_again) {
    var object = _x,
        property = _x2,
        receiver = _x3;desc = parent = getter = undefined;_again = false;if (object === null) object = Function.prototype;var desc = Object.getOwnPropertyDescriptor(object, property);if (desc === undefined) {
      var parent = Object.getPrototypeOf(object);if (parent === null) {
        return undefined;
      } else {
        _x = parent;_x2 = property;_x3 = receiver;_again = true;continue _function;
      }
    } else if ("value" in desc) {
      return desc.value;
    } else {
      var getter = desc.get;if (getter === undefined) {
        return undefined;
      }return getter.call(receiver);
    }
  }
};

function _classCallCheck(instance, Constructor) {
  if (!(instance instanceof Constructor)) {
    throw new TypeError("Cannot call a class as a function");
  }
}

function _inherits(subClass, superClass) {
  if (typeof superClass !== "function" && superClass !== null) {
    throw new TypeError("Super expression must either be null or a function, not " + typeof superClass);
  }subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } });if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass;
}

var AboutPage = (function (_React$Component) {
  _inherits(AboutPage, _React$Component);

  function AboutPage(props) {
    _classCallCheck(this, AboutPage);

    _get(Object.getPrototypeOf(AboutPage.prototype), "constructor", this).call(this, props);
    this.navItems = Сonsts.sideNavbarItems;
  }

  _createClass(AboutPage, [{
    key: "render",
    value: function render() {
      return React.createElement("div", { className: "about-page" }, React.createElement(NavSidebar, { navItems: this.navItems }));
    }
  }]);

  return AboutPage;
})(React.Component);
'use strict';

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
"use strict";

var _createClass = (function () {
  function defineProperties(target, props) {
    for (var i = 0; i < props.length; i++) {
      var descriptor = props[i];descriptor.enumerable = descriptor.enumerable || false;descriptor.configurable = true;if ("value" in descriptor) descriptor.writable = true;Object.defineProperty(target, descriptor.key, descriptor);
    }
  }return function (Constructor, protoProps, staticProps) {
    if (protoProps) defineProperties(Constructor.prototype, protoProps);if (staticProps) defineProperties(Constructor, staticProps);return Constructor;
  };
})();

var _get = function get(_x, _x2, _x3) {
  var _again = true;_function: while (_again) {
    var object = _x,
        property = _x2,
        receiver = _x3;desc = parent = getter = undefined;_again = false;if (object === null) object = Function.prototype;var desc = Object.getOwnPropertyDescriptor(object, property);if (desc === undefined) {
      var parent = Object.getPrototypeOf(object);if (parent === null) {
        return undefined;
      } else {
        _x = parent;_x2 = property;_x3 = receiver;_again = true;continue _function;
      }
    } else if ("value" in desc) {
      return desc.value;
    } else {
      var getter = desc.get;if (getter === undefined) {
        return undefined;
      }return getter.call(receiver);
    }
  }
};

function _classCallCheck(instance, Constructor) {
  if (!(instance instanceof Constructor)) {
    throw new TypeError("Cannot call a class as a function");
  }
}

function _inherits(subClass, superClass) {
  if (typeof superClass !== "function" && superClass !== null) {
    throw new TypeError("Super expression must either be null or a function, not " + typeof superClass);
  }subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } });if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass;
}

var Description = (function (_React$Component) {
  _inherits(Description, _React$Component);

  function Description() {
    _classCallCheck(this, Description);

    _get(Object.getPrototypeOf(Description.prototype), "constructor", this).apply(this, arguments);
  }

  _createClass(Description, [{
    key: "render",
    value: function render() {
      var desc = Сonsts.description;
      var articles = desc.text.map(function (item, index) {
        return React.createElement("div", { className: "subarticle", key: index }, React.createElement("h3", null, item.subtitle), React.createElement("article", { lang: "en" }, React.createElement("p", null, item.body)));
      });

      return React.createElement("div", { className: "description" }, React.createElement("div", null, React.createElement("img", { className: "img-responsive",
        src: "http://i.imgur.com/vP9pOJi.jpg" }), React.createElement("h1", null, desc.title)), React.createElement("br", null), articles, React.createElement("hr", null));
    }
  }]);

  return Description;
})(React.Component);
"use strict";

var _createClass = (function () {
  function defineProperties(target, props) {
    for (var i = 0; i < props.length; i++) {
      var descriptor = props[i];descriptor.enumerable = descriptor.enumerable || false;descriptor.configurable = true;if ("value" in descriptor) descriptor.writable = true;Object.defineProperty(target, descriptor.key, descriptor);
    }
  }return function (Constructor, protoProps, staticProps) {
    if (protoProps) defineProperties(Constructor.prototype, protoProps);if (staticProps) defineProperties(Constructor, staticProps);return Constructor;
  };
})();

var _get = function get(_x, _x2, _x3) {
  var _again = true;_function: while (_again) {
    var object = _x,
        property = _x2,
        receiver = _x3;desc = parent = getter = undefined;_again = false;if (object === null) object = Function.prototype;var desc = Object.getOwnPropertyDescriptor(object, property);if (desc === undefined) {
      var parent = Object.getPrototypeOf(object);if (parent === null) {
        return undefined;
      } else {
        _x = parent;_x2 = property;_x3 = receiver;_again = true;continue _function;
      }
    } else if ("value" in desc) {
      return desc.value;
    } else {
      var getter = desc.get;if (getter === undefined) {
        return undefined;
      }return getter.call(receiver);
    }
  }
};

function _classCallCheck(instance, Constructor) {
  if (!(instance instanceof Constructor)) {
    throw new TypeError("Cannot call a class as a function");
  }
}

function _inherits(subClass, superClass) {
  if (typeof superClass !== "function" && superClass !== null) {
    throw new TypeError("Super expression must either be null or a function, not " + typeof superClass);
  }subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } });if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass;
}

var DevStatus = (function (_React$Component) {
  _inherits(DevStatus, _React$Component);

  function DevStatus() {
    _classCallCheck(this, DevStatus);

    _get(Object.getPrototypeOf(DevStatus.prototype), "constructor", this).apply(this, arguments);
  }

  _createClass(DevStatus, [{
    key: "render",
    value: function render() {
      return React.createElement("div", { className: "col-sm-12" }, React.createElement("p", null, "Development Status"));
    }
  }]);

  return DevStatus;
})(React.Component);
"use strict";

var _createClass = (function () {
  function defineProperties(target, props) {
    for (var i = 0; i < props.length; i++) {
      var descriptor = props[i];descriptor.enumerable = descriptor.enumerable || false;descriptor.configurable = true;if ("value" in descriptor) descriptor.writable = true;Object.defineProperty(target, descriptor.key, descriptor);
    }
  }return function (Constructor, protoProps, staticProps) {
    if (protoProps) defineProperties(Constructor.prototype, protoProps);if (staticProps) defineProperties(Constructor, staticProps);return Constructor;
  };
})();

var _get = function get(_x, _x2, _x3) {
  var _again = true;_function: while (_again) {
    var object = _x,
        property = _x2,
        receiver = _x3;desc = parent = getter = undefined;_again = false;if (object === null) object = Function.prototype;var desc = Object.getOwnPropertyDescriptor(object, property);if (desc === undefined) {
      var parent = Object.getPrototypeOf(object);if (parent === null) {
        return undefined;
      } else {
        _x = parent;_x2 = property;_x3 = receiver;_again = true;continue _function;
      }
    } else if ("value" in desc) {
      return desc.value;
    } else {
      var getter = desc.get;if (getter === undefined) {
        return undefined;
      }return getter.call(receiver);
    }
  }
};

function _classCallCheck(instance, Constructor) {
  if (!(instance instanceof Constructor)) {
    throw new TypeError("Cannot call a class as a function");
  }
}

function _inherits(subClass, superClass) {
  if (typeof superClass !== "function" && superClass !== null) {
    throw new TypeError("Super expression must either be null or a function, not " + typeof superClass);
  }subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } });if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass;
}

var FAQ = (function (_React$Component) {
  _inherits(FAQ, _React$Component);

  function FAQ() {
    _classCallCheck(this, FAQ);

    _get(Object.getPrototypeOf(FAQ.prototype), "constructor", this).apply(this, arguments);
  }

  _createClass(FAQ, [{
    key: "handleSubmit",
    value: function handleSubmit() {
      console.log('submit event fired.');
    }
  }, {
    key: "render",
    value: function render() {
      var mock = Сonsts.questions;
      var questions = mock.map(function (item, index) {
        return React.createElement("li", { key: index }, React.createElement(Question, { title: item.title, text: item.text }));
      });

      return React.createElement("div", { className: "col-sm-12" }, React.createElement("form", { onSubmit: this.handleSubmit.bind(this) }, React.createElement("div", { className: "form-group col-sm-7" }, React.createElement("input", { type: "text", className: "form-control", ref: "username" })), React.createElement("div", { className: "form-group col-sm-5" }, React.createElement("button", { type: "submit", className: "btn btn-block btn-primary" }, "Search our FAQ"))), React.createElement("br", null), React.createElement("ul", null, questions));
    }
  }]);

  return FAQ;
})(React.Component);
'use strict';

var _createClass = (function () {
  function defineProperties(target, props) {
    for (var i = 0; i < props.length; i++) {
      var descriptor = props[i];descriptor.enumerable = descriptor.enumerable || false;descriptor.configurable = true;if ('value' in descriptor) descriptor.writable = true;Object.defineProperty(target, descriptor.key, descriptor);
    }
  }return function (Constructor, protoProps, staticProps) {
    if (protoProps) defineProperties(Constructor.prototype, protoProps);if (staticProps) defineProperties(Constructor, staticProps);return Constructor;
  };
})();

var _get = function get(_x, _x2, _x3) {
  var _again = true;_function: while (_again) {
    var object = _x,
        property = _x2,
        receiver = _x3;desc = parent = getter = undefined;_again = false;if (object === null) object = Function.prototype;var desc = Object.getOwnPropertyDescriptor(object, property);if (desc === undefined) {
      var parent = Object.getPrototypeOf(object);if (parent === null) {
        return undefined;
      } else {
        _x = parent;_x2 = property;_x3 = receiver;_again = true;continue _function;
      }
    } else if ('value' in desc) {
      return desc.value;
    } else {
      var getter = desc.get;if (getter === undefined) {
        return undefined;
      }return getter.call(receiver);
    }
  }
};

function _classCallCheck(instance, Constructor) {
  if (!(instance instanceof Constructor)) {
    throw new TypeError('Cannot call a class as a function');
  }
}

function _inherits(subClass, superClass) {
  if (typeof superClass !== 'function' && superClass !== null) {
    throw new TypeError('Super expression must either be null or a function, not ' + typeof superClass);
  }subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } });if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass;
}

var NavListItem = (function (_React$Component) {
  _inherits(NavListItem, _React$Component);

  function NavListItem(props) {
    _classCallCheck(this, NavListItem);

    _get(Object.getPrototypeOf(NavListItem.prototype), 'constructor', this).call(this, props);
  }

  _createClass(NavListItem, [{
    key: 'setActive',
    value: function setActive(bool) {
      this.props.onItemActive(this.props.item);
    }
  }, {
    key: 'render',
    value: function render() {
      var item = this.props.item;
      var classStr = 'nav-list-item ';
      return React.createElement('li', { className: classStr + (this.props.active ? 'active' : ''),
        onClick: this.setActive.bind(this) }, React.createElement('a', { href: '#' + item }, item));
    }
  }]);

  return NavListItem;
})(React.Component);

var NavSidebar = (function (_React$Component2) {
  _inherits(NavSidebar, _React$Component2);

  function NavSidebar(props) {
    _classCallCheck(this, NavSidebar);

    _get(Object.getPrototypeOf(NavSidebar.prototype), 'constructor', this).call(this, props);
    this.state = { activeItem: null };
  }

  _createClass(NavSidebar, [{
    key: 'onItemActive',
    value: function onItemActive(item) {
      this.setState({ activeItem: item });
    }
  }, {
    key: 'render',
    value: function render() {
      var _this = this;

      var self = this;
      var items = this.props.navItems.map(function (item, index) {
        return React.createElement(NavListItem, { key: index, item: item,
          onItemActive: _this.onItemActive.bind(_this),
          active: item === self.state.activeItem });
      });

      return React.createElement('div', { className: "row" }, React.createElement('div', { className: "col-sm-2 col-md-2" }, React.createElement('nav', { className: "nav-sidebar" }, React.createElement('ul', { className: "nav", id: "about-nav" }, items, React.createElement('li', { className: "nav-divider" }), React.createElement('li', { className: "back-home" }, React.createElement('a', { href: '/' }, React.createElement('i', { className: "glyphicon glyphicon-home" }), ' Back Home'))))));
    }
  }]);

  return NavSidebar;
})(React.Component);

NavSidebar.propTypes = {
  navItems: React.PropTypes.array
};
"use strict";

var _createClass = (function () {
  function defineProperties(target, props) {
    for (var i = 0; i < props.length; i++) {
      var descriptor = props[i];descriptor.enumerable = descriptor.enumerable || false;descriptor.configurable = true;if ("value" in descriptor) descriptor.writable = true;Object.defineProperty(target, descriptor.key, descriptor);
    }
  }return function (Constructor, protoProps, staticProps) {
    if (protoProps) defineProperties(Constructor.prototype, protoProps);if (staticProps) defineProperties(Constructor, staticProps);return Constructor;
  };
})();

var _get = function get(_x, _x2, _x3) {
  var _again = true;_function: while (_again) {
    var object = _x,
        property = _x2,
        receiver = _x3;desc = parent = getter = undefined;_again = false;if (object === null) object = Function.prototype;var desc = Object.getOwnPropertyDescriptor(object, property);if (desc === undefined) {
      var parent = Object.getPrototypeOf(object);if (parent === null) {
        return undefined;
      } else {
        _x = parent;_x2 = property;_x3 = receiver;_again = true;continue _function;
      }
    } else if ("value" in desc) {
      return desc.value;
    } else {
      var getter = desc.get;if (getter === undefined) {
        return undefined;
      }return getter.call(receiver);
    }
  }
};

function _classCallCheck(instance, Constructor) {
  if (!(instance instanceof Constructor)) {
    throw new TypeError("Cannot call a class as a function");
  }
}

function _inherits(subClass, superClass) {
  if (typeof superClass !== "function" && superClass !== null) {
    throw new TypeError("Super expression must either be null or a function, not " + typeof superClass);
  }subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } });if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass;
}

var Question = (function (_React$Component) {
  _inherits(Question, _React$Component);

  function Question() {
    _classCallCheck(this, Question);

    _get(Object.getPrototypeOf(Question.prototype), "constructor", this).apply(this, arguments);
  }

  _createClass(Question, [{
    key: "render",
    value: function render() {
      return React.createElement("div", null, React.createElement("div", null, React.createElement("h3", null, this.props.title)), React.createElement("div", null, React.createElement("p", null, this.props.text)));
    }
  }]);

  return Question;
})(React.Component);

Question.propTypes = {
  title: React.PropTypes.string.isRequired,
  text: React.PropTypes.string.isRequired
};
"use strict";

var _createClass = (function () {
  function defineProperties(target, props) {
    for (var i = 0; i < props.length; i++) {
      var descriptor = props[i];descriptor.enumerable = descriptor.enumerable || false;descriptor.configurable = true;if ("value" in descriptor) descriptor.writable = true;Object.defineProperty(target, descriptor.key, descriptor);
    }
  }return function (Constructor, protoProps, staticProps) {
    if (protoProps) defineProperties(Constructor.prototype, protoProps);if (staticProps) defineProperties(Constructor, staticProps);return Constructor;
  };
})();

var _get = function get(_x, _x2, _x3) {
  var _again = true;_function: while (_again) {
    var object = _x,
        property = _x2,
        receiver = _x3;desc = parent = getter = undefined;_again = false;if (object === null) object = Function.prototype;var desc = Object.getOwnPropertyDescriptor(object, property);if (desc === undefined) {
      var parent = Object.getPrototypeOf(object);if (parent === null) {
        return undefined;
      } else {
        _x = parent;_x2 = property;_x3 = receiver;_again = true;continue _function;
      }
    } else if ("value" in desc) {
      return desc.value;
    } else {
      var getter = desc.get;if (getter === undefined) {
        return undefined;
      }return getter.call(receiver);
    }
  }
};

function _classCallCheck(instance, Constructor) {
  if (!(instance instanceof Constructor)) {
    throw new TypeError("Cannot call a class as a function");
  }
}

function _inherits(subClass, superClass) {
  if (typeof superClass !== "function" && superClass !== null) {
    throw new TypeError("Super expression must either be null or a function, not " + typeof superClass);
  }subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } });if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass;
}

var Team = (function (_React$Component) {
  _inherits(Team, _React$Component);

  function Team() {
    _classCallCheck(this, Team);

    _get(Object.getPrototypeOf(Team.prototype), "constructor", this).apply(this, arguments);
  }

  _createClass(Team, [{
    key: "render",
    value: function render() {
      return React.createElement("div", null, React.createElement("p", null, "Team placeholder"));
    }
  }]);

  return Team;
})(React.Component);
'use strict';

$(document).ready(function () {

    // Query the .about-page which is the host of all other components.
    var $aboutPage = $('.container .about-page .row:first-child');

    // Add a div to .about-page, right next to navigation elements.
    $aboutPage.append("<div class='col-sm-10 col-md-10' id='about-content' />");
    var $aboutContent = $aboutPage.find('#about-content')[0];

    // Initial content load
    React.render(React.createElement(Description, null), $aboutContent);

    var $navItems = $aboutPage.find('#about-nav > li.nav-list-item a');

    // Handle clicks on navigation items.
    $navItems.click(handleNavItemClick);

    function handleNavItemClick() {
        $aboutContent.innerHTML = '';

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
                React.render(React.createElement(Team, null), $aboutContent);
                break;

            default:
                React.render(React.createElement(Description, null), $aboutContent);
                break;
        }
    }
});
