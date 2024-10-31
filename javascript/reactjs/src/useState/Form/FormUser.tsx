import useFormUser from "./useFormUser";

const FormUser = () => {
  const { email, password, conditions, handleInputChange } = useFormUser();

  return (
    <>
      <p>Form User</p>
      <div>
        <label htmlFor="email">Email</label>
        <input
          type="email"
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
      <div>
        <input
          type="checkbox"
          name="conditions"
          id="conditions"
          checked={conditions}
          onChange={handleInputChange}
        />
        <label htmlFor="conditions">Accept conditions</label>
      </div>
    </>
  );
};

export default FormUser;
