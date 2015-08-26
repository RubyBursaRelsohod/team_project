var _createClass = (function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; })();

var _get = function get(_x2, _x3, _x4) { var _again = true; _function: while (_again) { var object = _x2, property = _x3, receiver = _x4; desc = parent = getter = undefined; _again = false; if (object === null) object = Function.prototype; var desc = Object.getOwnPropertyDescriptor(object, property); if (desc === undefined) { var parent = Object.getPrototypeOf(object); if (parent === null) { return undefined; } else { _x2 = parent; _x3 = property; _x4 = receiver; _again = true; continue _function; } } else if ("value" in desc) { return desc.value; } else { var getter = desc.get; if (getter === undefined) { return undefined; } return getter.call(receiver); } } };

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _inherits(subClass, superClass) { if (typeof superClass !== "function" && superClass !== null) { throw new TypeError("Super expression must either be null or a function, not " + typeof superClass); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } }); if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass; }

var Team = (function (_React$Component) {
  _inherits(Team, _React$Component);

  function Team(props) {
    _classCallCheck(this, Team);

    _get(Object.getPrototypeOf(Team.prototype), "constructor", this).call(this, props);
    this.state = { members: Сonsts.team };
  }

  // componentWillReceiveProps(nextProps) {
  //     this.setState({members: nextProps.members});
  // }

  _createClass(Team, [{
    key: "split",
    value: function split(array) {
      var n = arguments.length <= 1 || arguments[1] === undefined ? 2 : arguments[1];

      var len = array.length,
          out = [],
          i = 0;
      while (i < len) {
        var size = Math.ceil((len - i) / n--);
        out.push(array.slice(i, i += size));
      }
      return out;
    }
  }, {
    key: "render",
    value: function render() {

      var members = this.split(this.state.members).map(function (subarr, index) {
        var items = subarr.map(function (item, i) {
          return React.createElement(
            "figure",
            { className: "dev-avatar", key: i },
            React.createElement(
              "a",
              { href: item.github_link, target: "_blank", className: "darken" },
              React.createElement("img", { src: item.avatar_url,
                alt: item.username,
                className: "img-responsive img-center",
                key: i })
            ),
            React.createElement(
              "figcaption",
              null,
              item.full_name
            )
          );
        });
        return React.createElement(
          "div",
          { className: "dev-row", key: index },
          items
        );
      });

      return React.createElement(
        "div",
        { className: "dev-page col-centered" },
        React.createElement(
          "h1",
          { className: "text-center" },
          "Our Dev Team"
        ),
        React.createElement("br", null),
        members
      );
    }
  }]);

  return Team;
})(React.Component);