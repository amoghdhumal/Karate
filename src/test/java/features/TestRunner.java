package features;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestRunner {
	/*
	 * @Karate.Test Karate testSample() { return
	 * Karate.run("doDelete").relativeTo(getClass());
	 * 
	 * 
	 * }
	 */
	@Test
	void testSmaple() {
		Results rs = Runner.path("classpath:feature/readcsv").parallel(2);
		
	}
}
//ce31e2e25b3ca84cb1eeba879e99a713487c21eeb322847b2135a84db185cda4
