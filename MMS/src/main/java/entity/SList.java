package entity;

public class SList {
	private String part;
	private Integer sum_salary;
	 
	 public SList() {
	        super();
	    }
	 public SList(String part, Integer sum_salary) {
		 super();
	     this.part = part;
	     this.sum_salary = sum_salary;
	 }
	 
	 public String getPart() {
	        return part;
	    }

	 public void setPart(String part) {
	        this.part = part == null ? null : part.trim();
	    }

	 public Integer getSum_salary() {
	    	return sum_salary;
	    }
	    public void setSum_salary(Integer sum_salary) {
	    	this.sum_salary=sum_salary;
	    }
	 @Override
	    public String toString() {
	        return "List [part=" + part + ", sum_salary=" + sum_salary + "]";
	    }   

}
