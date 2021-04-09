package com.itwillbs.test;

public class Main {

	// 메서드 생성 showInfo() : 이름,전화번호 출력
	static void showInfo(String name,String tel){
		System.out.println("이름 : " + name + " 전화번호 : " + tel);
	}
	// " showScore() : 총합, 평균 출력
	void showScore(int kor,int eng,int math){
		System.out.println("총합 : " + (kor + eng + math) + " 평균 :" + ((kor + eng + math) / 3.0));
	}
	
	void showTotal(ItwillBean bean){
		System.out.println("이름 : " + bean.getName() + " 전화번호 : " + bean.getTel());
		System.out.println("총합 : " + (bean.getKor() + bean.getEng() + bean.getMath())
				  + " 평균 :" + ((bean.getKor() + bean.getEng() + bean.getMath()) / 3.0));
	}
	
	
	

	public static void main(String[] args) {
		ItwillBean ib = new ItwillBean();

		System.out.println(ib.toString());
		System.out.println(ib);
		System.out.println("----------------------------------");

		// 객체 생성없이 학생 한명의 정보를 생성후
		// 학생의 정보 출력, 점수의 총합, 평균 계산 후 출력
		String name = "홍길동";
		String tel = "010-1234-1234";
		int kor = 82;
		int eng = 77;
		int math = 86;

		System.out.println("이름 : " + name + " 전화번호 : " + tel);
		System.out.println("총합 : " + (kor + eng + math) + " 평균 :" + ((kor + eng + math) / 3.0));

		System.out.println("----------------------------------");
		// 메서드 생성 showInfo() : 이름,전화번호 출력
		showInfo(name, tel);
		// " showScore() : 총합, 평균 출력
		Main m = new Main();
		m.showScore(kor, eng, math);
		
		// 메서드 생성 showTotal() -> ItwillBean 객체를 사용해서
		// 사용자정보 + 점수 정보(총점,평균)를 출력
		
		ItwillBean jung = new ItwillBean();
		jung.setName("정학생");
		jung.setTel("010-1234-1234");
		jung.setKor(66);
		jung.setEng(77);
		jung.setMath(88);
		
		m.showTotal(jung);
		
		

	}

}
