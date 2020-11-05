import Search from './SearchForm'


const Navbar = ({ updateInput }) => {
    return (
            <nav className="navbar navbar-dark bg-warning mb-5">
                <h3 className="navbar-brand">InstaBop</h3>
                <Search updateInput={updateInput} />
            </nav>
       
    )
}

export default Navbar






