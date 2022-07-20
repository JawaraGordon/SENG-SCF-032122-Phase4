import React, {useState} from 'react'

function Auth() {
    const [username, setUsername] = useState('')
    const [email, setEmail] = useState('')
    const [password, setPassword] = useState('')
   
    const [errors, setErrors] = useState([])

    function onSubmit(e){
        e.preventDefault()
        const user = {
            name: username,
            email,
            password
        }
       
        fetch(`/users`,{
          method:'POST',
          headers:{'Content-Type': 'application/json'},
          body:JSON.stringify(user)
        })
        .then(res => res.json())
        .then(json => {
            if(json.errors) setErrors(Object.entries(json.errors))
        })
    }
    return (
      <> 
      <form onSubmit={onSubmit}>
      <fieldset>
      <legend>Sign UP</legend>
      <label htmlFor="username">
        Username
      </label>
        <input type="text" id="username" value={username} onChange={(e) => setUsername(e.target.value)} />
      <label htmlFor="email">
       Email
      </label>
      <input type="text" id="email" value={email} onChange={(e) => setEmail(e.target.value)} />
      <label htmlFor="password">
       Password
      </label>
      <input type="password" id="password"value={password} onChange={(e) => setPassword(e.target.value)} />
     
      <input type="submit" value="Sign up!" />
      </fieldset>
    </form>
    {errors?errors.map(e => <div>{e[0]+': ' + e[1]}</div>):null}
      </>
    )
}

export default Auth;
