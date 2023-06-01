package stuPjt;

public class Student {
	
	private int stuNo;
	private String name;
	private int kor;
	private int eng;
	private int math;
	private int total;
	private double avg;
	private int rank;
	private String createDate;
	private String updateDate;
	
	Student(){} //기본생성자
	
	Student(int stuNo,String name){
		this.stuNo = stuNo;
		this.name = name;
	}
	
	Student(int stuNo,String name,int kor,int eng,int math,String createDate){
		this.stuNo = stuNo;
		this.name = name;
		this.kor = kor;
		this.eng = eng;
		this.math = math;
		this.total = kor+eng+math;
		this.avg = total/3.0;
		this.createDate = createDate;
	}
	
	public int getStuNo() {
		return stuNo;
	}
	public void setStuNo(int stuNo) {
		this.stuNo = stuNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getKor() {
		return kor;
	}
	public void setKor(int kor) {
		this.kor = kor;
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		this.eng = eng;
	}
	public int getMath() {
		return math;
	}
	public void setMath(int math) {
		this.math = math;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public double getAvg() {
		return avg;
	}
	public void setAvg(double avg) {
		this.avg = avg;
	}
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public String getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(String updateDate) {
		this.updateDate = updateDate;
	}
	
	

}
