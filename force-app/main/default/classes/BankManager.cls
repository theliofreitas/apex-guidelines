// Subtype of BankPerson (Inheritance)
public class BankManager extends BankPerson {
    // Getters & Setters / Encapsulation
    private Double salary;

    public BankManager(String firstName, String lastName, Date birthDate, Double salary) {
        // Passing parameters from child constructor to parent
        super(firstName, lastName, birthDate);
        this.salary = salary;
    }
}