class Description extends React.Component {
  render () {
    const desc = Сonsts.description;
    return (
      <div>
        <div>
          <img className="img-responsive"
               src="http://i.imgur.com/vP9pOJi.jpg" />
          <h1>{desc.title}</h1>
        </div>
        <br />
        <p>{desc.text}</p>
      </div>
    );
  }
}

