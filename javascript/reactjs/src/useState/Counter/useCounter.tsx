import { useState } from "react";

//^ Implement the state logic in a custom hook

const useCounter = () => {
  //* "useState" is a Hook that lets you add state to function components
  //* Specify the type in the angle brackets
  const [count, setCount] = useState<number>(0);

  const increment = () => {
    //* You can either pass a value
    setCount(count + 1);
  };

  const decrement = () => {
    //* Or you can pass a function that receives the previous state
    setCount((prev) => prev - 1);
    //! But it won't update the state until the next render
    console.log(count);
  };

  const reset = () => {
    setCount(0);
  };

  return { count, increment, decrement, reset };
};

export default useCounter;
