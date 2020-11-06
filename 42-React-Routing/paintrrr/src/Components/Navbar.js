import Search from './SearchForm'
import{ Link } from 'react-router-dom'


const Navbar = ({ updateInput }) => {
    return (
            <nav className="navbar navbar-dark bg-warning mb-5">
                <Link to="/"><h3 className="navbar-brand">InstaBop</h3></Link>
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <Link to='/paintings'>Paintings</Link>
                </li>
            </ul>
                <Search updateInput={updateInput} />
            </nav>
       
    )
}

export default Navbar






