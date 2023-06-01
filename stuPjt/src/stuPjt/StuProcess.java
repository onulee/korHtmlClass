package stuPjt;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Scanner;

public class StuProcess {
	Scanner scan = new Scanner(System.in);
	ArrayList<Student> list = new ArrayList<>();
	int stuNo;
	String name;
	int kor,eng,math;
	String createDate;
	
	//파일 읽어오기 메소드 - 리턴타입 메소드명()
	ArrayList<Student> stuRead() throws Exception {
		//파일에 있는 글자를 읽어오기
		BufferedReader br = null;
		br = new BufferedReader(new FileReader("c:/savedata/student.txt"));
		while(true) {
			String data = br.readLine(); //1줄 읽어오기
			if(data == null) break;
			String[] dataArr = data.split(","); //데이터분리 - 1,홍길동,100,100,100,2023-06-01 
			stuNo = Integer.parseInt(dataArr[0]);
			name = dataArr[1];
			kor = Integer.parseInt(dataArr[2]);
			eng = Integer.parseInt(dataArr[3]);
			math = Integer.parseInt(dataArr[4]);
			createDate = dataArr[5];
			list.add(new Student(stuNo,name,kor,eng,math,createDate)); //list저장
		}
		br.close();
		return list;
	}
	
	
	// 학생성적입력 메소드
	void stuInput() {
	    while(true) {
	    	System.out.println("[ 학생성적 입력 ]");
	    	stuNo = (list.size()+1);
	    	System.out.println((list.size()+1)+"번째 이름을 입력하세요.(0.이전페이지 이동)");
	    	name = scan.next();
	    	if(name.equals("0")) {
	    		System.out.println("[ 이전페이지로 이동합니다. ]");
	    		System.out.println();
	    		break;
	    	}
	    	System.out.println("국어점수를 입력하세요.");
	    	kor = scan.nextInt();
	    	System.out.println("영어점수를 입력하세요.");
	    	eng = scan.nextInt();
	    	System.out.println("수학점수를 입력하세요.");
	    	math = scan.nextInt();
	    	//날짜입력
	    	Date today = new Date();
	    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	    	createDate = sdf.format(today);
	    	
	    	//list저장
	    	list.add(new Student(stuNo,name,kor,eng,math,createDate));
	    	
	    	System.out.println("저장되었습니다.");
	    	System.out.println();
	    	
	    }//while
		
	}//stuInput
	

}
