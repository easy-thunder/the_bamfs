// import image from "src/assets/bamfs_login_screen.png"
import SignUp from "./SignUp"
function Login({handleUser}){
    





    return(
        <div>
            {/* <h2>hi</h2> */}
            <h1>The BAMFS</h1>
    <img src="src/assets/bamfs_login_screen.png" alt="not working" />
            <SignUp handleUser={handleUser}/>
            <br />
            <button>sign-in</button>
        </div>
    )
}

export default Login