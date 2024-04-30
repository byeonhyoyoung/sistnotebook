package spring.day0430.anno1;

import org.springframework.stereotype.Component;

//annoContext1.xml에서 bean지웠으니 등록해야함
@Component //자동으로 빈에 등록(id가 클래스명으로 자동등록_첫글자만 소문자_즉 myDao가 아이디가 된다_등록되었으니 MyDao는 끝)
public class MyDao implements DaoInter {

	@Override
	public void insertData(String str) {
		// TODO Auto-generated method stub

		System.out.println(str+"_데이타 db에 추가성공!!!");
	}

	@Override
	public void deleteData(String num) {
		// TODO Auto-generated method stub

		System.out.println(num+"_에 해당하는 데이터 삭제 성공");
	}

}
