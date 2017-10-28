class NewPhotoForm extends React.Component {
  render() {
    const {handleSubmit} = this.props
    return(
      <section id="new-photo-form">
        <p id="new-photo-form">Post a Photo</p>
        <form onSubmit={handleSubmit} >
          <input type="file" name="photo[photo]" /><br />
          <input type="hidden" name="photo[user_id]" value="1" /><br />
          <textarea name="photo[blurb]" placeholder="Photo Description"></textarea><br />
          <input type="submit" value="Post" />
        </form>
      </section>
    )
  }
}
