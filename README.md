# AsyncProfilerActuator Demo

This is a small SpringBoot WEB application with AsyncProfilerActuator enabled.
Index page contains short tutorial for most commonly used profiling scenarios.

# HowTo
## Run on Docker
Pull and run image:
```
docker pull nifties/async-profiler-actuator-demo:latest
docker run -p 80:8080 -p 9000:9000 --rm --name apa-demo nifties/async-profiler-actuator-demo:latest
```
Open http://localhost in your browser.

## Build
Currently, _async-profiler-actuator_ is not being published to any global repositories, but you can download it from
[GitHub Packages](https://github.com/nifties-dev/async-profiler-actuator/packages/2093872).
In order to access https://maven.pkg.github.com/nifties-dev/async-profiler-actuator repository GITHUB_USERNAME and 
GITHUB_TOKEN environment variables have to be set up as described in GitHub documentation (see
[Using a published package](https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-gradle-registry#using-a-published-package)).

When this is done, application can be built using standard Gradle commands: 
```
./gradlew build
```

## Continuous Build & Run
```
./gradlew build --continuous
```
In separate terminal:
```
./gradlew bootRun
```
## Build and Run Using Docker 
```
docker image build async-profiler-actuator-demo
docker run -p 80:8080 -p 9000:9000 --rm --name async-profiler-actuator-demo async-profiler-actuator-demo
```