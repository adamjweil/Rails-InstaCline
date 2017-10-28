class ProfileInfo extends React.Component {
  render(){

    const { photoUrl, bio } = this.props.profileInfo

    return(
      <div className="profile-info">
        <div className="profileHeader">
          <div className="avatarColumn">
            <img className="avatar" src={photoUrl} alt=""/>
            <h3>@AdamWeil</h3>
          </div>
            <div className="avatarColumn">
              <div className="bio">
                {bio}
              </div>
            </div>
        </div>
        <section id="follow-details">

          <FollowDetails followers={33} following={122} photoCount={312}/>

        </section>
      </div>
    )
  }
}
