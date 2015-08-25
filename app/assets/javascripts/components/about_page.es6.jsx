class AboutPage extends React.Component {

  constructor(props) {
    super(props);
    this.navItems = Сonsts.sideNavbarItems;
  }

  render () {
    return (
      <div className="about-page">
        <NavSidebar navItems={this.navItems} />
      </div>
    )
  }
}

