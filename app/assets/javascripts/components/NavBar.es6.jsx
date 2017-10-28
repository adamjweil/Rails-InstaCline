class NavBar extends React.Component {
  constructor() {
    super();
    this.state = {
      visiblePage: "http://localhost:3000/home"
    };
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick(event) {
  event.preventDefault()
  this.setState({visiblePage: event.target.href})
}
  render() {
    return (
      <ul>
        <li><a onClick={this.props.handleClick} href="/">Home</a></li>
        <li><a onClick={this.props.handleClick} href="profile">Profile</a></li>
        <li><a onClick={this.props.handleClick} href="search">Search</a></li>
      </ul>
    )
  }
}
