package dev.nifties.integration.boot.actuate.profiler.demo;

import dev.nifties.integration.springframework.boot.annotation.EnableAsyncProfiler;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@EnableAsyncProfiler
@SpringBootApplication
public class AsyncProfilerActuatorDemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(AsyncProfilerActuatorDemoApplication.class, args);
	}

}
