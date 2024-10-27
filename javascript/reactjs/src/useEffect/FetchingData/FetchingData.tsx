import useFetchingData from "./useFetchingData";
import UserList from "./UserList";

const FetchingData = () => {
  //! Even though we're only importing variables,
  //! The code related to the "useEffect" hook is still being executed
  const { users } = useFetchingData();

  return (
    <div>
      <h1>User List</h1>

      <ul>
        {users?.map((user) => (
          <UserList key={user.id} name={user.name} />
        ))}
      </ul>
    </div>
  );
};

export default FetchingData;
