class Team extends React.Component {

  constructor(props) {
    super(props);
    this.state = { members: Сonsts.team };
  }

  // componentWillReceiveProps(nextProps) {
  //     this.setState({members: nextProps.members});
  // }

  split(array, n = 2) {
    let len = array.length, out = [], i = 0;
    while (i < len) {
      let size = Math.ceil((len - i) / n--);
      out.push(array.slice(i, i += size));
    }
    return out;
  }

  render () {

      let members = this.split(this.state.members).map( (subarr, index) => {
        let items = subarr.map( (item, i) => {
          return (
            <figure className="dev-avatar" key={i}>
              <a href={item.github_link} target="_blank" className="darken">
                <img src={item.avatar_url}
                     alt={item.username}
                     className="img-responsive img-center"
                     key={i} />
              </a>
              <figcaption>
                {item.full_name}
              </figcaption>
            </figure>
          )
        });
        return (
          <div className="dev-row" key={index}>
            {items}
          </div>
        );
      });

      return (
          <div className="dev-page col-centered">
            <h1 className="text-center">Our Dev Team</h1>
            <br />
            {members}
          </div>
      );
  }
}

