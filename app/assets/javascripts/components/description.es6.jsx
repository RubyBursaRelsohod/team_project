class Description extends React.Component {
  render () {
    const desc = Сonsts.description;
    let articles = desc.text.map((item, index) => {
      return (
        <div className="subarticle" key={index}>
          <h3>{item.subtitle}</h3>
          <article lang="en">
            <p>{item.body}</p>
          </article>
        </div>
      );
    });

    return (
      <div className="description">
        <div>
          <img className="img-responsive"
               src="http://i.imgur.com/vP9pOJi.jpg" />
          <h1>{desc.title}</h1>
        </div>
        <br />
        {articles}
        <hr />
      </div>
    );
  }
}

