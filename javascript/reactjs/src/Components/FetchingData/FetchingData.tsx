import useFetchingData from "./useFetchingData";

const FetchingData = () => {
  //! Even though we're only importing variables,
  //! The code related to the "useEffect" hook is still being executed
  const { users } = useFetchingData();

  return (
    <div>
      <h1>User List</h1>

      <ul>
        {users?.map((user) => (
          <li key={user.id}>{user.name}</li>
        ))}
      </ul>
    </div>
  );
};

export default FetchingData;
