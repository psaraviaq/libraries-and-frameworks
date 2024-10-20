import { useEffect, useState } from "react";
import { User } from "../../types/User";
import { getUsers } from "../../services/userService";

const useFetchingData = () => {
  const [users, setUsers] = useState<User[]>([]);

  //* "useEffect" is a hook that allows you to perform side effects in function components
  useEffect(() => {
    //* This code will only run once after the initial render
    getUsers()
      .then((data) => setUsers(data))
      .catch((err) => console.error(err));

    //* If the second argument is an empty array, it will only run once after the initial render
  }, []);

  //! You don't need to import the code related to the "useEffect" hook
  return { users };
};

export default useFetchingData;
