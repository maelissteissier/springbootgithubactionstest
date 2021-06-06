.PHONY: run
run:
	mvn spring-boot:run

.PHONY: package
package:
	mvn clean package

.PHONY: run_package
run_package:
	java -jar ./target/SpringbootGithubActions-0.0.1-SNAPSHOT.jar

.PHONY: d-build
d-build:
	docker build -t springbootgithubactionstest .

.PHONY: d-run
d-run:
	docker run -p 8080:8080 springbootgithubactionstest

.PHONY: deploy
deploy: package d-build
	heroku container:push web -a springbootgithubactionstest
	heroku container:release web -a springbootgithubactionstest
	heroku logs --tail -a springbootgithubactionstest

