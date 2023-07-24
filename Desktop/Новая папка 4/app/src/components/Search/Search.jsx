import { useState } from "react";
import "./Search.css"
import SearchContent from "../SearchContent/SearchContent";

const Search = (props) => {

    const [state, setState] = useState(true)
    
    const styles = {
        height: "70%"
    }

    const stylesSer = {
        position: "fixed"
    }

    const openView = () => {
        setState(state => !state)
        props.newState(state)
    }

    return (
        <>
            <div className="search" style={state ? null : styles}>
                <div style={state ? null : stylesSer} onClick={openView} className="search-button">сменить контент</div>
            </div>
            {state ? null : <SearchContent/>}
        </>
    )
}

export default Search;