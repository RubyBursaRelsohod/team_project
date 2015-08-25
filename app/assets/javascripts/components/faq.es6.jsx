class FAQ extends React.Component {

  handleSubmit() {
    console.log('submit event fired.');
  }

  render() {
    const mock = Сonsts.questions;
    let questions = mock.map( (item, index) => {
      return (
        <li key={index}>
          <Question title={item.title} text={item.text} />
        </li>
      );
    });

    return (
      <div className="col-sm-12">
        <form onSubmit={this.handleSubmit.bind(this)}>
          <div className="form-group col-sm-7">
            <input type="text" className="form-control" ref="username" />
          </div>
          <div className="form-group col-sm-5">
            <button type="submit" className="btn btn-block btn-primary">
              Search our FAQ
            </button>
          </div>
        </form>
        <br />
        <ul>
          {questions}
        </ul>
      </div>
    );
  }
}

