// Subtype of BankPerson (Inheritance)
public class BankCustomer extends BankPerson {
    // Getters & Setters / Encapsulation
    public Boolean vip { get; private set; } 

    public BankCustomer(String firstName, String lastName, Date birthDate) {
        // Passing parameters from child constructor to parent
        super(firstName, lastName, birthDate);
        this.vip = false;
    }
}