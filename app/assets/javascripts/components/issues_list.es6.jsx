class IssuesList extends React.Component {

  constructor(props) {
    super(props);
  }

  render () {
    let issues = this.props.issues.map( (item, index) => {
      return (
        <a key={index} className="list-group-item"
           href={item.html_url} target="_blank">
          <strong>{item.title + "."}</strong> {"\t\t\t\t\tClosed at "}
          {item.closed_at ? item.closed_at.replace(/T|Z/, ' ').slice(0, -1) : ''}
        </a>
      );
    });

    return (
      <div className="list-group col-md-offset-1">
        {issues}
      </div>
    );
  }
}

IssuesList.propTypes = {
  issues: React.PropTypes.array
};
