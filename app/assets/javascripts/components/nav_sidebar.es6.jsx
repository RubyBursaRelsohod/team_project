class NavListItem extends React.Component {

  constructor(props) {
    super(props);
  }

  setActive(bool) {
    this.props.onItemActive(this.props.item);
  }

  render() {
    let item = this.props.item;
    let classStr = 'nav-list-item ';
    return (
      <li className={classStr + (this.props.active ? 'active' : '')}
          onClick={this.setActive.bind(this)} >
        <a href={'#'+item}>{item}</a>
      </li>
    );
  }
}

class NavSidebar extends React.Component {

  constructor(props) {
    super(props);
    this.state = { activeItem: null };
  }

  onItemActive(item) {
    this.setState({ activeItem: item });
  }

  render () {
    let self = this;
    let items = this.props.navItems.map( (item, index) => {
      return (
        <NavListItem key={index} item={item}
                     onItemActive={this.onItemActive.bind(this)}
                     active={item === self.state.activeItem} />
      );
    });

    return (
      <div className = "row">
        <div className="col-sm-2 col-md-2">
          <nav className="nav-sidebar">
            <ul className="nav" id="about-nav">
              {items}
              <li className="nav-divider" />
              <li className="back-home">
                <a href='/'><i className="glyphicon glyphicon-home"></i> Back Home</a>
              </li>
            </ul>
          </nav>
        </div>
      </div>
    );
  }
}

NavSidebar.propTypes = {
  navItems: React.PropTypes.array
};
