package liufeng.minecar.repository;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

/**
 * @author liufeng
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class BusinessListRepositoryTest {
	
	@Autowired
	private BusinessListRepository repository;
	
	@Test
	public void findAll() {
		List<BusinessList> list = repository.findAll();
		System.out.println(list);
	}
	
	
}