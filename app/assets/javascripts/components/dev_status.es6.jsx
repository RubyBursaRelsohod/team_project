class DevStatus extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      issues: [{title: '', html_url: '#', state: 'open'}]
    };
    this.CLOSED_ISSUE_ID = 'closed_issue_r';
    this.OPEN_ISSUE_ID = 'open_issue_r';
    this.CLOSED_ISSUE_INPT_ID = 'closed_issue_inpt';
    this.OPEN_ISSUE_INPT_ID = 'open_issue_inpt';
  }

  getIssues(p_url, p_data, cbSuccess) {
    let request = $.ajax({
      url: p_url,
      method: "GET",
      data: p_data
    });
    request.done(cbSuccess);
    request.fail(console.log);
  }

  componentWillMount() {
    let url = 'https://api.github.com/repos/RubyBursaRelsohod/team_project/issues?state=all&filter=all&since=2015-08-01T07:00:00Z';
    this.getIssues(url, {issues: 'open'}, this.onBackendResponse.bind(this));
  }

  onBackendResponse(data) {
    let jsonExcluder = (key, value) => {
      if (key == 'pull_request' || key == 'user' ||
          key == 'labels' || key == 'assignee' ||
          key == 'milestone' || key == 'comments')
        return undefined;
      else return value;
    };

    let reducedIssuesStr = JSON.stringify(data, jsonExcluder);
    let issues = JSON.parse(reducedIssuesStr);

    let closed = this.getClosedIssues(issues);;
    let open = this.getOpenedIssues(issues);
    localStorage.clear();

    localStorage.closed_issues = JSON.stringify(closed);
    localStorage.open_issues = JSON.stringify(open);
    this.setState({ issues: closed });
    closed = null;
    open = null;
    issues = null;
  }

  onChangeRadioButton(e) {
    switch(e.currentTarget.id) {
      case this.OPEN_ISSUE_ID:
        this.setState({ issues: JSON.parse(localStorage.open_issues) });
        break;
      case this.CLOSED_ISSUE_ID:
        this.setState({ issues: JSON.parse(localStorage.closed_issues) });
        break;
    }
  }

  onInputChange(e) {
    switch(e.currentTarget.id) {
      case this.OPEN_ISSUE_INPT_ID:
        this.setState({ issues: JSON.parse(localStorage.open_issues) });
        break;
      case this.CLOSED_ISSUE_INPT_ID:
        this.setState({ issues: JSON.parse(localStorage.closed_issues) });
        break;
    }
  }

  getClosedIssues(issues) {
    return $.map(issues, (val,key) =>
        { if(val.state == 'closed') return val; });
  }

  getOpenedIssues(issues) {
    return $.map(issues, (val,key) =>
        { if(val.state == 'open') return val; });
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
                     autoComplete="off"
                     id={this.CLOSED_ISSUE_INPT_ID}
                     onChange={this.onInputChange.bind(this)} /> Closed Issues
            </label>

            <label className="btn btn-primary"
                   onClick={this.onChangeRadioButton.bind(this)}
                   id={this.OPEN_ISSUE_ID}>
              <input type="radio" name="options"
                     autoComplete="off"
                     id={this.OPENED_ISSUE_INPT_ID}
                     onChange={this.onInputChange.bind(this)} /> Open Issues
            </label>

          </div>
          <IssuesList issues={this.state.issues} />
        </div>
      </div>
    )
  }
}
