
class Profile extends React.Component {
  constructor() {
    super();
    this.state = {
      photos: [],
      newPhoto: {}
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick(event) {
  event.preventDefault()
  this.setState({visiblePage: event.target.href})
}

handleSubmit(event) {
  event.preventDefault();
  let that = this;
  let blurb = $('textarea').val()
  const { newPhoto } = this.state;
  reader = new FileReader();
  file = $('input[type=file]')[0].files[0]
  reader.readAsDataURL(file)
  reader.onload = function(event) {
    $.ajax({
      url: '/photos',
      method: 'post',
      data: {blurb: blurb, base64: reader.result}
  }).done((response) => {
    console.log(response)
    console.log(that)
    that.setState({photos: [response].concat(that.state.photos)})
    that.setState({newPhoto: ""})
    console.log(that.state.photos)
    $('textarea').val("")
    file.empty();
  })
  }
}

componentDidMount() {
  $.ajax({
    url: '/photos',
    method: 'get'
  }).done((response) => {
    this.setState({photos: response});
    // console.log(response);
  });
}

  render() {
    const profileInfo = {
      photoUrl: "https://avatars3.githubusercontent.com/u/25589910?v=4&s=400",
      bio: "Hi, my name is Adam Weil! This is a small project I worked on to get more familiarized with React and Paperclip!"
    }
    return (
      <div id="container">
        <ProfileInfo profileInfo={profileInfo} />
        <NewPhotoForm newPhoto={this.state.newPhoto} handleSubmit={this.handleSubmit} />
        <Timeline photos={this.state.photos} />
      </div>
    )
  }
}
