package features;

import com.intuit.karate.junit5.Karate;

public class TestRunner {
	@Karate.Test
	Karate testSample() {
		return Karate.run("configread").relativeTo(getClass());
	}
}
//ce31e2e25b3ca84cb1eeba879e99a713487c21eeb322847b2135a84db185cda4
