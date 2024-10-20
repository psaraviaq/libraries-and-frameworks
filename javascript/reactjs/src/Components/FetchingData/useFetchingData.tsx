import { useEffect, useState } from "react";

const useFetchingData = () => {
  const [users, setUsers] = useState([]);

  //* "useEffect" is a hook that allows you to perform side effects in function components
  useEffect(() => {
    //* This code will only run once after the initial render
    fetch("https://jsonplaceholder.typicode.com/users")
      .then((response) => response.json())
      .then((data) => setUsers(data))
      .catch((err) => console.error(err));

    //* If the second argument is an empty array, it will only run once after the initial render
  }, []);

  //! You don't need to import the code related to the "useEffect" hook
  return { users };
};

export default useFetchingData;
