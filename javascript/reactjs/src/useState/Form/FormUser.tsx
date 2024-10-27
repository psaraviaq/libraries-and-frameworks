import useFormUser from "./useFormUser";

const FormUser = () => {
  const { email, password, handleInputChange } = useFormUser();

  return (
    <>
      <p>Form User</p>
      <div>
        <label htmlFor="email">Email</label>
        <input
          type="text"
          name="email"
          id="email"
          value={email}
          onChange={handleInputChange}
        />
      </div>
      <div>
        <label htmlFor="password">Password</label>
        <input
          type="password"
          name="password"
          id="password"
          value={password}
          onChange={handleInputChange}
        />
      </div>
    </>
  );
};

export default FormUser;
