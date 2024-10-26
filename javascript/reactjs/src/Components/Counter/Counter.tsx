import useCounter from "./useCounter";

const Counter = () => {
  //* Destructure the values and functions from the custom hook
  const { count, increment, decrement, reset } = useCounter();

  //* In JSX (or TSX), you put code inside curly braces {}
  return (
    <div>
      <p>{count}</p>

      <button onClick={increment}>Increment</button>
      <button onClick={decrement}>Decrement</button>
      <button onClick={reset}>Reset</button>
    </div>
  );
};

export default Counter;
