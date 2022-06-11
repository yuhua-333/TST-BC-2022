package entity;

public class Staff {
	private int staff_id;
	private String name;
	private String part;
	private String roleName;
	private int salary;
	
	public Staff() {
        super();
    }
    public Staff(int staff_id,String name,String part,String roleName,int salary) {
    	super();
        this.staff_id = staff_id;
        this.name = name;
        this.part = part;
        this.roleName = roleName;
        this.salary = salary;
    }
    
    public Integer getStaff_id() {
    	return staff_id;
    }
    public void setStaff_id(Integer staff_id) {
    	this.staff_id=staff_id;
    }
    public String getName() {
    	return name;
    }
    public void setName(String name) {
    	this.name=name== null ? null : name.trim();
    }
    public String getPart() {
    	return part;
    }
    public void setPart(String part) {
    	this.part=part== null ? null : part.trim();;
    }
    public String getRoleName() {
    	return roleName;
    }
    public void setRoleName(String roleName) {
    	this.roleName=roleName== null ? null : roleName.trim();;
    }
    public Integer getSalary() {
    	return salary;
    }
    public void setSalary(Integer salary) {
    	this.salary=salary;
    }
    
    @Override
    public String toString() {
        return "Staff [staff_id=" + staff_id + ", name=" + name + ", part=" + part + ", roleName=" + roleName + ", salary="
                + salary + "]";
    }    

}
