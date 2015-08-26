class IssuesList extends React.Component {

  constructor(props) {
    super(props);
  }

  render () {
    console.log('list Issues');
    let issues = this.props.issues.map( (item, index) => {
      return (
        <a key={index} className="list-group-item"
           href={item.html_url} target="_blank">
          {item.title}
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
