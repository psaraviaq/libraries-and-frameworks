import "./App.css";
import MyComponent from "./Components/MyComponent/MyComponent";
import Counter from "./useState/Counter/Counter";
import FormUser from "./useState/Form/FormUser";
import FetchingData from "./useEffect/FetchingData/FetchingData";

function App() {
  return (
    <>
      {/** Importing MyComponent */}
      <MyComponent />

      <h2>useState</h2>
      <div>
        <Counter />
        <FormUser />
      </div>

      <h2>useEffect</h2>
      <div>
        <FetchingData />
      </div>
    </>
  );
}

export default App;
