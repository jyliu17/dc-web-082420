

const SearchForm = ({updateInput}) => {
    return (
        <>
            <form className="form-inline">
                <input 
                    onChange={event => updateInput(event.target.value)} 
                    className="form-control mr-sm-2" 
                    type="search" placeholder="Enter title here" 
                    aria-label="Search" 
                />
                <button className="btn btn-outline-dark my-2 my-sm-0" type="submit">Search</button>
             </form>
        </>
    )
}

export default SearchForm