// Supertype of BankManager (Inheritance)
// Subtype of BankPerson (Inheritance)
public virtual class BankEmployee extends BankPerson {
    // Getters & Setters / Encapsulation
    private String username;
    private String password;
    
    // Using the protected modifier so the property is visible in any childClass
    protected Double salary;

    public BankEmployee(String firstName, String lastName, Date birthDate, String username, String password, Double salary) {
        // Passing parameters from child constructor to parent
        super(firstName, lastName, birthDate);
        this.username = username;
        this.password = password;
        this.salary = salary;
    }

    public String getSalary() {
        return 'U$ ' + this.salary;
    }
 
    public virtual Double increaseSalary() {
        // Default bonification for employees
        this.salary *= 1.10;
        return this.salary;
    }

    // Static methods in the virtual parentClass cannot be overridden in the childClass.
    public static Boolean login(BankEmployee bankEmployee, String username, String password) {
        if (bankEmployee.username == username && bankEmployee.password == password) {
            System.debug('User authenticated!');
            return true;
        }
        else {
            System.debug('Incorrect username or password!');
            return false;
        }
    }
}