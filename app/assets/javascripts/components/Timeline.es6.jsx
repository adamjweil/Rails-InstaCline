class Timeline extends React.Component {
  render() {
    const photos = this.props.photos
    return(
      <div className="timeline">
        {photos.map((photo, i) =>
          <Photo photo={photo} key={i} />
        )}
      </div>
    )
  }
}
