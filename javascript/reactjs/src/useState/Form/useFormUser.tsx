import { useState } from "react";
import { User } from "./User";

let initialUser: User = {
  email: "abc@hotmail.com",
  password: "capitalism",
};

const useFormUser = () => {
  const [user, setUser] = useState<User>(initialUser);

  const { email, password } = user;

  const handleInputChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const { name, value } = e.target;
    setUser((prev) => ({
      ...prev,
      [name]: value,
    }));
  };

  return { email, password, handleInputChange };
};

export default useFormUser;
