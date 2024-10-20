import "./App.css";
import Counter from "./Components/Counter/Counter";
import MyComponent from "./Components/MyComponent/MyComponent";
import FetchingData from "./Components/FetchingData/FetchingData";

function App() {
  return (
    <>
      {/** Importing MyComponent */}
      <MyComponent />

      <Counter />

      <FetchingData />
    </>
  );
}

export default App;
