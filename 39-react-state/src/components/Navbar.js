import Search from './SearchForm'


export const Navbar = (props) => {
    return (
  
            <nav className="navbar navbar-dark bg-warning mb-5">
                <h3 className="navbar-brand">InstaBop</h3>
                <Search updateInput={props.updateInput} />
            </nav>
       
    )
}









// export const Navbar = (props) => {
//     return (
//         <>
//             <nav className="navbar navbar-dark bg-warning mb-5">
//                 <h3 className="navbar-brand">InstaBop</h3>  
//                 <Search
//                     updateInput={props.updateInput}
//                     input={props.searchInput} /> 
//             </nav> 
//         </>
//     )
// }