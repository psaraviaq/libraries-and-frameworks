import { useState } from "react";
import { User } from "./User";

let initialUser: User = {
  email: "abc@hotmail.com",
  password: "capitalism",
  conditions: false,
};

const useFormUser = () => {
  //? Initializer function
  const [user, setUser] = useState<User>(initialUser);

  const { email, password, conditions } = user;

  //* Create one function to handle all the inputs
  //! However, if the state is more nested, you'll need to create a function for each level
  const handleInputChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const { name, value, checked } = e.target;
    //~ It's a good practice to replace the state, rather than modifying it (objects, arrays)
    setUser((prev) => ({
      ...prev,
      [name]: name !== "conditions" ? value : checked,
    }));
    // setUser({
    //   ...user,
    //   [name]: name !== "conditions" ? value : checked,
    // });
  };

  return { email, password, conditions, handleInputChange };
};

export default useFormUser;
