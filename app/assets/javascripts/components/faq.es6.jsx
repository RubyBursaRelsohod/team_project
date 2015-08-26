class FAQ extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      questions: [{title: '', answer: ''}],
      searchString: ''
    };
  }

  handleChange(e) {
    this.setState({ searchString: e.target.value });
  }

  getQuestions(p_url, p_data, cbSuccess) {
    let request = $.ajax({
      url: p_url,
      method: "GET",
      data: p_data
    });
    request.done(cbSuccess);
    request.fail(console.log);
  }

  componentWillMount() {
    let url = '/questions.json';
    this.getQuestions(url, {is_faq: true}, this.onBackendResponse.bind(this));
  }

  onBackendResponse(data) {
    this.questions = data;
    this.setState({ questions: data });
  }

  handleSubmit() {
    console.log('submit event fired.');
  }

  searchStringInArray(str, strArray) {
    for (let i = 0; i < strArray.length; ++i) {
      if(strArray[i].match(str))
        return true;
    }
    return false;
  }

  anyMatchInQuery(question, query) {
    let questionArr = question.split(/\s|\,|\.|\!|\?|\:\;/i);
    let queryArr = query.split(/\s|\,|\.|\!|\?|\:\;/i);

    let found = false;
    for (let i = 0; i < queryArr.length; ++i) {
      if( (questionArr.indexOf(queryArr[i]) > -1) ||
          (this.searchStringInArray(queryArr[i], questionArr)) ) {
        found = true;
        break;
      }
    }
    return found;
  }

  render() {
    // const mock = Сonsts.questions;
    let searchString = this.state.searchString.trim().toLowerCase();
    let questions = this.state.questions;

    if (searchString.length) {
      questions = questions.filter( (q) => {
        // return q.question.toLowerCase().match(new RegExp(searchString, 'i'));
        return this.anyMatchInQuery(q.question.toLowerCase(), searchString);
      });
    }

    let questionsList = questions.map( (item, index) => {
      return (
        <li key={index} className="question-item">
          <Question title={item.question} text={item.answer} />
        </li>
      );
    });

    return (
      <div className="container col-sm-12">
        <h1 className="page-header col-centered text-center">Frequently Asked Questions</h1>
        <form onSubmit={this.handleSubmit.bind(this)}>
          <div className="form-group col-sm-12">
            <input type="text" className="form-control" ref="username"
                   placeholder="Search our FAQ..."
                   onChange={this.handleChange.bind(this)}
                   value={this.state.searchString} />
          </div>
        </form>
        <br />
        <ul>
          {questionsList}
        </ul>
      </div>
    );
  }
}

