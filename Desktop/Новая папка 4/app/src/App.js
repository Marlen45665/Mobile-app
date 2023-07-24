import { useState } from "react";
import ContentApp from "./components/ContentApp/ContentApp";
import Search from "./components/Search/Search";
import "./App.css"


function App() {

  const [statea, setStatea] = useState(false)
  
  const handleState = (state) => {
    console.log(state)
    setStatea(state)
    
  }

  const scrollStyle = {
    overflowX: "hidden",
    overflowY: "scroll"
  }


  return (
    <>
    <div className="background" style={statea ? scrollStyle : null}>
      <Search newState={handleState}/>
    </div>
    {statea ? null : <ContentApp/>}
    </>
  );
}

export default App;
