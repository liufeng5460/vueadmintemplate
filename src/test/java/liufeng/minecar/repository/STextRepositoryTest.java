package liufeng.minecar.repository;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

import static org.junit.Assert.assertNotNull;

@RunWith(SpringRunner.class)
@SpringBootTest
public class
STextRepositoryTest {
	
	@Autowired
	STextRepository sTextRepository;
	
	@Test
	public void findAll() {
		List<SText> list = sTextRepository.findAll();
		assertNotNull(list);
		System.out.println(list.toString());
	}
	
}