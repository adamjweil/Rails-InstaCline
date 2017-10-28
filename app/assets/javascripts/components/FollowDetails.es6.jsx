class FollowDetails extends React.Component {
  render(){

    const { followers, following, photoCount } = this.props

    return(
      <div>
        <hr />
        <center><h4>Followers: {followers}  |  Following: {following}  |  Photos: {photoCount}</h4></center>
        <hr />
        <br></br>
      </div>
    )
  }
}
