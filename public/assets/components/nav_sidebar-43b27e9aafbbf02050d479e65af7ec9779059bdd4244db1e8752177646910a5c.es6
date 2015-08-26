'use strict';

var _createClass = (function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ('value' in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; })();

var _get = function get(_x, _x2, _x3) { var _again = true; _function: while (_again) { var object = _x, property = _x2, receiver = _x3; desc = parent = getter = undefined; _again = false; if (object === null) object = Function.prototype; var desc = Object.getOwnPropertyDescriptor(object, property); if (desc === undefined) { var parent = Object.getPrototypeOf(object); if (parent === null) { return undefined; } else { _x = parent; _x2 = property; _x3 = receiver; _again = true; continue _function; } } else if ('value' in desc) { return desc.value; } else { var getter = desc.get; if (getter === undefined) { return undefined; } return getter.call(receiver); } } };

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError('Cannot call a class as a function'); } }

function _inherits(subClass, superClass) { if (typeof superClass !== 'function' && superClass !== null) { throw new TypeError('Super expression must either be null or a function, not ' + typeof superClass); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } }); if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass; }

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
      return React.createElement(
        'li',
        { className: classStr + (this.props.active ? 'active' : ''),
          onClick: this.setActive.bind(this) },
        React.createElement(
          'a',
          { href: '#' + item },
          item
        )
      );
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

      return React.createElement(
        'div',
        { className: "row" },
        React.createElement(
          'div',
          { className: "col-sm-2 col-md-2" },
          React.createElement(
            'nav',
            { className: "nav-sidebar" },
            React.createElement(
              'ul',
              { className: "nav", id: "about-nav" },
              items,
              React.createElement('li', { className: "nav-divider" }),
              React.createElement(
                'li',
                { className: "back-home" },
                React.createElement(
                  'a',
                  { href: '/' },
                  React.createElement('i', { className: "glyphicon glyphicon-home" }),
                  ' Back Home'
                )
              )
            )
          )
        )
      );
    }
  }]);

  return NavSidebar;
})(React.Component);

NavSidebar.propTypes = {
  navItems: React.PropTypes.array
};