class DevStatus extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      issues: [{title: '', html_url: '#', state: 'open'}]
    };
    this.CLOSED_ISSUE_ID = 'closed_issue_r';
    this.OPEN_ISSUE_ID = 'open_issue_r';
  }
    // $.getJSON('https://api.github.com/repos/RubyBursaRelsohod/team_project/issues?state=all&filter=all')
    //               .done( (data) => { this.props.onNewData(data); } );
    // $.getJSON('https://api.github.com/repos/RubyBursaRelsohod/team_project/issues?state=all&filter=all',
    //   callback);
  getIssues(p_url, p_data, cbSuccess) {
    console.log('getIssues');
    let request = $.ajax({
      url: p_url,
      method: "GET",
      data: p_data
    });
    request.done(cbSuccess);
    request.fail(console.log);
  }

  componentWillMount() {
    let url = 'https://api.github.com/repos/RubyBursaRelsohod/team_project/issues?state=all&filter=all';
    this.getIssues(url, {issues: 'open'}, this.onBackendResponse.bind(this));
  }

  onBackendResponse(data) {
    console.log('onBackendResponse');
    this.issues = data;
    this.setState({ issues: data });
  }

  onChangeRadioButton(e) {
    console.log('onChangeRadioButton')
    console.log(e.target.id);
    switch(e.target.id) {
      case OPEN_ISSUE_ID:
        this.setState({ issues: this.getOpenedIssues(this.issues).bind(this) });
        break;
      case CLOSED_ISSUE_ID:
        this.setState({ issues: this.getClosedIssues(this.issues).bind(this) });
        break;
    }
  }

  getClosedIssues(issues) {
    console.log('filter closed');
    return issues.filter((issue) => { issue.state === 'open' });
  }

  getOpenedIssues(issues) {
    console.log('filter opened');
    return issues.filter((issue) => { issue.state === 'closed' });
  }

  render() {
    // console.log(this.issues);
    return (
      <div className="dev-status-page col-centered">
        <div className="graphs">
          <img
              src='https://graphs.waffle.io/RubyBursaRelsohod/team_project/throughput.svg'
              alt='throughput graph'
              className="throughput-graph" />
        </div>
        <div className="issues col-centered">
          <div className="btn-group" data-toggle="buttons">
            <label className="btn btn-primary active">
              <input type="radio" name="options" id={this.CLOSED_ISSUE_ID}
                     autoComplete="off" onChange={this.onChangeRadioButton.bind(this)}/> Closed Issues
            </label>
            <label className="btn btn-primary">
              <input type="radio" name="options" id={this.OPEN_ISSUE_ID}
                     autoComplete="off" onChange={this.onChangeRadioButton.bind(this)} /> Open Issues
            </label>
          </div>
          <IssuesList issues={this.state.issues} />
        </div>
      </div>
    )
  }
}
