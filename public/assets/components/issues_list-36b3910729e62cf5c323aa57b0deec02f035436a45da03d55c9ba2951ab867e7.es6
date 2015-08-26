"use strict";

var _createClass = (function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; })();

var _get = function get(_x, _x2, _x3) { var _again = true; _function: while (_again) { var object = _x, property = _x2, receiver = _x3; desc = parent = getter = undefined; _again = false; if (object === null) object = Function.prototype; var desc = Object.getOwnPropertyDescriptor(object, property); if (desc === undefined) { var parent = Object.getPrototypeOf(object); if (parent === null) { return undefined; } else { _x = parent; _x2 = property; _x3 = receiver; _again = true; continue _function; } } else if ("value" in desc) { return desc.value; } else { var getter = desc.get; if (getter === undefined) { return undefined; } return getter.call(receiver); } } };

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _inherits(subClass, superClass) { if (typeof superClass !== "function" && superClass !== null) { throw new TypeError("Super expression must either be null or a function, not " + typeof superClass); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } }); if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass; }

var IssuesList = (function (_React$Component) {
  _inherits(IssuesList, _React$Component);

  function IssuesList(props) {
    _classCallCheck(this, IssuesList);

    _get(Object.getPrototypeOf(IssuesList.prototype), "constructor", this).call(this, props);
  }

  _createClass(IssuesList, [{
    key: "render",
    value: function render() {
      console.log('list Issues');
      var issues = this.props.issues.map(function (item, index) {
        return React.createElement(
          "a",
          { key: index, className: "list-group-item",
            href: item.html_url, target: "_blank" },
          item.title
        );
      });

      return React.createElement(
        "div",
        { className: "list-group col-md-offset-1" },
        issues
      );
    }
  }]);

  return IssuesList;
})(React.Component);

IssuesList.propTypes = {
  issues: React.PropTypes.array
};