// Supertype of BankCustomer and BankEmployee (Inheritance)
public virtual class BankPerson {
    // Getters & Setters / Encapsulation
    private String firstName;
    private String lastName;
    public Date birthDate { get; private set; }

    public BankPerson(String firstName, String lastName, Date birthDate) {
        this.firstName = firstName;
        this.lastName = lastName;
        setBirthDate(birthDate);
    }

    public void setBirthDate(Date birthDate) {
        Date minDate = Date.newInstance(1900, 01, 01);
        Date maxDate = Date.today();

        if (birthDate >= minDate && birthDate <= maxDate) {
            this.birthDate = birthDate;
        }
        else {
            // throw Custom exception
            throw new BankPersonException('Invalid birth date');
        }
    }

    public String getName() {
        return (this.firstName + ' ' + this.lastName);
    }

    public Integer getAge() {
        Integer days = this.birthDate.daysBetween(Date.Today());
        Integer age = (days/365);

        return age;
    }
}
