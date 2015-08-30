'use strict';

var _createClass = (function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ('value' in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; })();

var _get = function get(_x, _x2, _x3) { var _again = true; _function: while (_again) { var object = _x, property = _x2, receiver = _x3; desc = parent = getter = undefined; _again = false; if (object === null) object = Function.prototype; var desc = Object.getOwnPropertyDescriptor(object, property); if (desc === undefined) { var parent = Object.getPrototypeOf(object); if (parent === null) { return undefined; } else { _x = parent; _x2 = property; _x3 = receiver; _again = true; continue _function; } } else if ('value' in desc) { return desc.value; } else { var getter = desc.get; if (getter === undefined) { return undefined; } return getter.call(receiver); } } };

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError('Cannot call a class as a function'); } }

function _inherits(subClass, superClass) { if (typeof superClass !== 'function' && superClass !== null) { throw new TypeError('Super expression must either be null or a function, not ' + typeof superClass); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } }); if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass; }

var DevStatus = (function (_React$Component) {
  _inherits(DevStatus, _React$Component);

  function DevStatus(props) {
    _classCallCheck(this, DevStatus);

    _get(Object.getPrototypeOf(DevStatus.prototype), 'constructor', this).call(this, props);
    this.state = {
      issues: [{ title: '', html_url: '#', state: 'open' }]
    };
    this.CLOSED_ISSUE_ID = 'closed_issue_r';
    this.OPEN_ISSUE_ID = 'open_issue_r';
    this.CLOSED_ISSUE_INPT_ID = 'closed_issue_inpt';
    this.OPEN_ISSUE_INPT_ID = 'open_issue_inpt';
  }

  _createClass(DevStatus, [{
    key: 'getIssues',
    value: function getIssues(p_url, p_data, cbSuccess) {
      var request = $.ajax({
        url: p_url,
        method: "GET",
        data: p_data
      });
      request.done(cbSuccess);
      request.fail(console.log);
    }
  }, {
    key: 'componentWillMount',
    value: function componentWillMount() {
      var url = 'https://api.github.com/repos/RubyBursaRelsohod/team_project/issues?state=all&filter=all&since=2015-08-01T07:00:00Z';
      this.getIssues(url, { issues: 'open' }, this.onBackendResponse.bind(this));
    }
  }, {
    key: 'onBackendResponse',
    value: function onBackendResponse(data) {
      var jsonExcluder = function jsonExcluder(key, value) {
        if (key == 'pull_request' || key == 'user' || key == 'labels' || key == 'assignee' || key == 'milestone' || key == 'comments') return undefined;else return value;
      };

      var reducedIssuesStr = JSON.stringify(data, jsonExcluder);
      var issues = JSON.parse(reducedIssuesStr);

      var closed = this.getClosedIssues(issues);;
      var open = this.getOpenedIssues(issues);
      localStorage.clear();

      localStorage.closed_issues = JSON.stringify(closed);
      localStorage.open_issues = JSON.stringify(open);
      this.setState({ issues: closed });
      closed = null;
      open = null;
      issues = null;
    }
  }, {
    key: 'onChangeRadioButton',
    value: function onChangeRadioButton(e) {
      switch (e.currentTarget.id) {
        case this.OPEN_ISSUE_ID:
          this.setState({ issues: JSON.parse(localStorage.open_issues) });
          break;
        case this.CLOSED_ISSUE_ID:
          this.setState({ issues: JSON.parse(localStorage.closed_issues) });
          break;
      }
    }
  }, {
    key: 'onInputChange',
    value: function onInputChange(e) {
      switch (e.currentTarget.id) {
        case this.OPEN_ISSUE_INPT_ID:
          this.setState({ issues: JSON.parse(localStorage.open_issues) });
          break;
        case this.CLOSED_ISSUE_INPT_ID:
          this.setState({ issues: JSON.parse(localStorage.closed_issues) });
          break;
      }
    }
  }, {
    key: 'getClosedIssues',
    value: function getClosedIssues(issues) {
      return $.map(issues, function (val, key) {
        if (val.state == 'closed') return val;
      });
    }
  }, {
    key: 'getOpenedIssues',
    value: function getOpenedIssues(issues) {
      return $.map(issues, function (val, key) {
        if (val.state == 'open') return val;
      });
    }
  }, {
    key: 'render',
    value: function render() {
      return React.createElement(
        'div',
        { className: "dev-status-page col-centered" },
        React.createElement(
          'div',
          { className: "graphs" },
          React.createElement(
            'h1',
            { className: "text-center page-header" },
            'Our Recent Closed and Opened Issues from GitHub'
          )
        ),
        React.createElement(
          'div',
          { className: "issues col-centered" },
          React.createElement(
            'div',
            { className: "btn-group", 'data-toggle': "buttons" },
            React.createElement(
              'label',
              { className: "btn btn-primary active",
                onClick: this.onChangeRadioButton.bind(this),
                id: this.CLOSED_ISSUE_ID },
              React.createElement('input', { type: "radio", name: "options",
                autoComplete: "off",
                id: this.CLOSED_ISSUE_INPT_ID,
                onChange: this.onInputChange.bind(this) }),
              ' Closed Issues'
            ),
            React.createElement(
              'label',
              { className: "btn btn-primary",
                onClick: this.onChangeRadioButton.bind(this),
                id: this.OPEN_ISSUE_ID },
              React.createElement('input', { type: "radio", name: "options",
                autoComplete: "off",
                id: this.OPENED_ISSUE_INPT_ID,
                onChange: this.onInputChange.bind(this) }),
              ' Open Issues'
            )
          ),
          React.createElement(IssuesList, { issues: this.state.issues })
        )
      );
    }
  }]);

  return DevStatus;
})(React.Component);