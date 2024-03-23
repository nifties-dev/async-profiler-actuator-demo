# AsyncProfilerActuator Demo

This is a small SpringBoot WEB application with AsyncProfilerActuator enabled.
Index page contains short tutorial for most commonly used profiling scenarios. 

# HowTo
### build
./gradlew build

### continuous build + run (in separate terminals)
./gradlew build --continuous
./gradlew bootRun

### build and run using docker 
docker image build async-profiler-actuator-demo
docker run -p 80:8080 -p 443:8443 -p 9000:9000 --rm --name async-profiler-actuator-demo async-profiler-actuator-demo
