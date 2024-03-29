package liufeng.minecar.repository;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Optional;

@RunWith(SpringRunner.class)
@SpringBootTest
public class TLightTest {
	
	@Autowired
	private TLightRepository repository;
	
	@Test
	public void findById() {
		Optional<TLight> light = repository.findById("1");
		System.out.println(light.toString());
	}
	
}