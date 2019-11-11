package net.orclmvn;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {
	@Autowired
	private MemberRepository repo;
	
	public List<Member> listAll() {
		return repo.findAll();
	}
	
	public void save(Member member) {
		repo.save(member);
	}
	
	public Member get(Integer memberid) {
		return repo.findById(memberid).get();
	}
	
	public void delete(Integer memberid) {
		repo.deleteById(memberid);
	}
}
