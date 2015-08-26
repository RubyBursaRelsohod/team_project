class DevStatus extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      issues: [{title: '', html_url: '#', state: 'open'}]
    };
    this.CLOSED_ISSUE_ID = 'closed_issue_r';
    this.OPEN_ISSUE_ID = 'open_issue_r';
  }

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
    this.issues = data;
    this.setState({ issues: this.getClosedIssues(data) });
  }

  onChangeRadioButton(e) {
    let issues = this.issues;
    switch(e.target.id) {
      case this.OPEN_ISSUE_ID:
        this.setState({ issues: this.getOpenedIssues(issues) });
        break;
      case this.CLOSED_ISSUE_ID:
        this.setState({ issues: this.getClosedIssues(issues) });
        break;
    }
  }

  getClosedIssues(issues) {
    if(!this.closed)
      this.closed = $.map(issues, (val,key) =>
        { if(val.state == 'closed') return val; });
    return this.closed;

  }

  getOpenedIssues(issues) {
    if(!this.open)
      this.open = $.map(issues, (val,key) =>
        { if(val.state == 'open') return val; });
    return this.open;
  }

  render() {
    return (
      <div className="dev-status-page col-centered">
        <div className="graphs">
          <h1 className="text-center page-header">
            Our Recent Closed and Opened Issues from GitHub
          </h1>
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
