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
      case this.OPEN_ISSUE_ID:
        console.log(this.OPEN_ISSUE_ID);
        this.setState({ issues: this.getOpenedIssues(this.issues) });
        break;
      case this.CLOSED_ISSUE_ID:
        console.log(this.CLOSED_ISSUE_ID);
        this.setState({ issues: this.getClosedIssues(this.issues) });
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

          // <img
          //     src='https://graphs.waffle.io/RubyBursaRelsohod/team_project/throughput.svg'
          //     alt='throughput graph'
          //     className="throughput-graph" />
  render() {
    // console.log(this.issues);
    return (
      <div className="dev-status-page col-centered">
        <div className="graphs">
        </div>
        <div className="issues col-centered">
          <div className="btn-group" data-toggle="buttons">

            <label className="btn btn-primary active"
                   onClick={this.onChangeRadioButton.bind(this)}
                   id={this.CLOSED_ISSUE_ID}>
              <input type="radio" name="options"
                     autoComplete="off" /> Closed Issues
            </label>

            <label className="btn btn-primary"
                   onClick={this.onChangeRadioButton.bind(this)}
                   id={this.OPEN_ISSUE_ID}>
              <input type="radio" name="options"
                     autoComplete="off" /> Open Issues
            </label>

          </div>
          <IssuesList issues={this.state.issues} />
        </div>
      </div>
    )
  }
}
