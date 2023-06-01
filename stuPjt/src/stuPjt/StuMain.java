package stuPjt;

import java.util.ArrayList;
import java.util.Scanner;

public class StuMain {

	public static void main(String[] args) throws Exception {
		Scanner scan = new Scanner(System.in);
		StuProcess sp = new StuProcess();
		ArrayList<Student> list = new ArrayList<>(); //데이터 저장하는 컬렉션
		int choice = 0; //입력받는 변수
		list = sp.stuRead(); //데이터 가져오기
		while(true) {
			System.out.println("[ 학생성적 프로그램 ]");
			System.out.println("1. 성적입력");
			System.out.println("2. 성적출력");
			System.out.println("3. 성적수정");
			System.out.println("4. 성적삭제");
			System.out.println("5. 학생검색");
			System.out.println("6. 등수처리");
			System.out.println("7. 오름차순 정렬");
			System.out.println("8. 파일읽어오기");
			System.out.println("9. 파일저장하기");
			System.out.println("0. 프로그램 종료");
			System.out.println("-----------------");
			System.out.println("원하는 번호를 입력하세요.");
			choice = scan.nextInt();
			
			switch(choice) {
			case 1:
				//StuProcess클래스에 있는 메소드 호출
				sp.stuInput();
				break;
			}
			
			
		}//while
		
		

	}

}
