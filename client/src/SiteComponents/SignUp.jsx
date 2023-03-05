import { useState} from "react"
import { useHistory } from "react-router-dom"

function SignUp({handleUser}){
    const history = useHistory()
    const [hidden, setHidden] = useState(true)
    const [errors, setErrors] = useState([])

    function signUp(e){
        e.preventDefault()
        if(e.target.password.value == e.target.confirmPassword.value){
        const user = {
            email: e.target.email.value,
            password: e.target.password.value,
            username: e.target.username.value
        }
        fetch(`/users`,{
            method: "POST",
            headers: {"Content-Type": "application/json"},
            body: JSON.stringify(user)
        })
        .then(r=>{
            if(r.ok){r.json().then(handleUser(user))
            history.push(`/home/${user.username}`)
            console.log("success")
            }
            else{r.json().then(setErrors)}
        })
        }
    }


    return(
        <div>
            <button onClick={()=>setHidden(hidden=>(!hidden))}
            >Sign-Up</button>
            {/* <p>{`${errors}`}</p> */}
            {errors.map(error=> <p>{error}</p>)}
            <div className={`${hidden ? "hidden" : "block"}`}>
                <form onSubmit={signUp}>
                    <input type='text' id="username" placeholder="user name" />
                    <br />
                    <input type="email" id="email" placeholder="email"/>
                    <br />
                    <input type="password" id="password" placeholder="password" />
                    <br />
                    <input type="password" id="confirmPassword" placeholder="confirm password" />
                    <br />
                    <input type='submit' />

                </form>
            </div>
        
        </div>
    )
}


export default SignUp