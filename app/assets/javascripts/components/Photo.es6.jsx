class Photo extends React.Component {
  render(){
    const { blurb } = this.props.photo
    const photo = this.props.photo
    return(
      <div className="photo">
        <img src={photo.photo_url} />
        <p>Description: {blurb}</p>
      </div>
    )
  }
}
