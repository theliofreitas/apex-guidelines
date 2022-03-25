// Subtype of BankEmployee (Inheritance)
public class BankManager extends BankEmployee {

    public BankManager(String firstName, String lastName, Date birthDate, String username, String password, Double salary) {
        // Passing parameters from child constructor to parent
        super(firstName, lastName, birthDate, username, password, salary);
    }

    // Overriding the parentClass virtual method
    public override Double increaseSalary() {
        // Default bonification for managers
       this.salary *= 1.20;
       return this.salary;
    }
}