import { useState, useEffect } from 'react'
import './App.css'
import './index.css'
import { Switch, Route} from "react-router-dom"


import Home from './SiteComponents/Home'
import Login from './SiteComponents/Login'





function App() {
  const [user, setUser]= useState({})
  const [weapons, setWeapons]= useState([])
  
  useEffect(()=>{
    fetch(`/weapons`)
    .then(r=>r.json())
    .then(setWeapons)
  },[])


  function checkUser(){
    console.log(user)
  }

  

  function handleUser(user){
    setUser(user)
  }




  return (
    <div className="App">
      <button onClick={checkUser}>check user</button>
      <Switch>
      <Route exact path = {'/'} >
        <Login handleUser={handleUser} />
      </Route>
      <Route exact path = {`/home/${user.username}`} >
        <Home user = {user}/>
      </Route>
      </Switch>
      {weapons.map(weapon=><p>{weapon}</p>)}

    </div>
  )
}

export default App
