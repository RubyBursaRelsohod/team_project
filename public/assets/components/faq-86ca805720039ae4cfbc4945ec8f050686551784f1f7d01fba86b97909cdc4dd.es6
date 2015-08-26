'use strict';

var _createClass = (function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ('value' in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; })();

var _get = function get(_x, _x2, _x3) { var _again = true; _function: while (_again) { var object = _x, property = _x2, receiver = _x3; desc = parent = getter = undefined; _again = false; if (object === null) object = Function.prototype; var desc = Object.getOwnPropertyDescriptor(object, property); if (desc === undefined) { var parent = Object.getPrototypeOf(object); if (parent === null) { return undefined; } else { _x = parent; _x2 = property; _x3 = receiver; _again = true; continue _function; } } else if ('value' in desc) { return desc.value; } else { var getter = desc.get; if (getter === undefined) { return undefined; } return getter.call(receiver); } } };

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError('Cannot call a class as a function'); } }

function _inherits(subClass, superClass) { if (typeof superClass !== 'function' && superClass !== null) { throw new TypeError('Super expression must either be null or a function, not ' + typeof superClass); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } }); if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass; }

var FAQ = (function (_React$Component) {
  _inherits(FAQ, _React$Component);

  function FAQ(props) {
    _classCallCheck(this, FAQ);

    _get(Object.getPrototypeOf(FAQ.prototype), 'constructor', this).call(this, props);
    this.state = {
      questions: [{ title: '', answer: '' }],
      searchString: ''
    };
  }

  _createClass(FAQ, [{
    key: 'handleChange',
    value: function handleChange(e) {
      this.setState({ searchString: e.target.value });
    }
  }, {
    key: 'getQuestions',
    value: function getQuestions(p_url, p_data, cbSuccess) {
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
      var url = '/questions.json';
      this.getQuestions(url, { is_faq: true }, this.onBackendResponse.bind(this));
    }
  }, {
    key: 'onBackendResponse',
    value: function onBackendResponse(data) {
      this.questions = data;
      this.setState({ questions: data });
    }
  }, {
    key: 'handleSubmit',
    value: function handleSubmit() {
      console.log('submit event fired.');
    }
  }, {
    key: 'searchStringInArray',
    value: function searchStringInArray(str, strArray) {
      for (var i = 0; i < strArray.length; ++i) {
        if (strArray[i].match(str)) return true;
      }
      return false;
    }
  }, {
    key: 'anyMatchInQuery',
    value: function anyMatchInQuery(question, query) {
      var questionArr = question.split(/\s|\,|\.|\!|\?|\:\;/i);
      var queryArr = query.split(/\s|\,|\.|\!|\?|\:\;/i);

      var found = false;
      for (var i = 0; i < queryArr.length; ++i) {
        if (questionArr.indexOf(queryArr[i]) > -1 || this.searchStringInArray(queryArr[i], questionArr)) {
          found = true;
          break;
        }
      }
      return found;
    }
  }, {
    key: 'render',
    value: function render() {
      var _this = this;

      // const mock = Сonsts.questions;
      var searchString = this.state.searchString.trim().toLowerCase();
      var questions = this.state.questions;

      if (searchString.length) {
        questions = questions.filter(function (q) {
          return _this.anyMatchInQuery(q.question.toLowerCase(), searchString);
        });
      }

      var questionsList = questions.map(function (item, index) {
        return React.createElement(
          'li',
          { key: index, className: "question-item" },
          React.createElement(Question, { title: item.question, text: item.answer })
        );
      });

      return React.createElement(
        'div',
        { className: "container col-sm-12" },
        React.createElement(
          'h1',
          { className: "page-header col-centered text-center" },
          'Frequently Asked Questions'
        ),
        React.createElement(
          'form',
          { onSubmit: this.handleSubmit.bind(this) },
          React.createElement(
            'div',
            { className: "form-group col-sm-12" },
            React.createElement('input', { type: "text", className: "form-control", ref: "username",
              placeholder: "Search our FAQ...",
              onChange: this.handleChange.bind(this),
              value: this.state.searchString })
          )
        ),
        React.createElement('br', null),
        React.createElement(
          'ul',
          null,
          questionsList
        )
      );
    }
  }]);

  return FAQ;
})(React.Component);