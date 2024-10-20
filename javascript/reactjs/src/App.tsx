import "./App.css";
import Counter from "./Components/Counter/Counter";
import MyComponent from "./Components/MyComponent/MyComponent";

function App() {
  return (
    <>
      {/** Importing MyComponent */}
      <MyComponent />

      <Counter />
    </>
  );
}

export default App;
