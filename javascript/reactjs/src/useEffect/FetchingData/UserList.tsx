import { User } from "./User";

//* This is a presentational component
const UserList: React.FC<User> = ({ name }) => {
  return <li>{name}</li>;
};

export default UserList;
