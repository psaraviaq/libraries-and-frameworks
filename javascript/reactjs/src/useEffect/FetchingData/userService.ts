import { User } from "./User";

//* Use a function to isolate the fetch call of the API
export const getUsers = async (): Promise<User[]> => {
  try {
    const response = await fetch("https://jsonplaceholder.typicode.com/users");
    if (!response.ok) {
      throw new Error(response.statusText);
    }
    const data: User[] = await response.json();
    return data;
  } catch (err) {
    throw new Error("Something went wrong");
  }
};
