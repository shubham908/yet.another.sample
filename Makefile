codebuild-install-java:
	@echo "Installing Amazon Corretto 21"
	yum update -y
	yum install -y java-21-amazon-corretto-devel
	java -version

codebuild-install-maven:
	@echo "Installing maven"
	yum install -y maven

package:
	@echo "Packaging the Spring Boot Project"
	mvn clean package -DskipTests