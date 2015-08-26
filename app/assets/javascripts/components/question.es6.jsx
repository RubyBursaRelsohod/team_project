class Question extends React.Component {

  render () {
    return (
      <div className="question-block">
        <div><h3>{this.props.title}</h3></div>
        <div><p>{this.props.text}</p></div>
      </div>
    );
  }
}

Question.propTypes = {
  title: React.PropTypes.string,
  text: React.PropTypes.string
};
