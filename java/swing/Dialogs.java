import javax.swing.JOptionPane;

public class Dialogs {
    public static void main(String[] args) {
        //* JOptionPane is used to create dialog boxes

        //* showInputDialog prompts the user for input and returns it as a String.
        //! If the user clicks "Cancel" or closes the dialog, it returns null.
        String name = JOptionPane.showInputDialog("Enter your name:");
        System.out.println(name);

        //* showMessageDialog displays a message to the user.
        JOptionPane.showMessageDialog(null, "This is the message",
                "This is the Title", JOptionPane.PLAIN_MESSAGE);
    }
}
