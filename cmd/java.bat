::JAVA
set "JAVA_HOME=D:/Programs/Java/jdk-10.0.1"
set "PATH=%PATH%;%JAVA_HOME%"
set "PATH=%PATH%;%JAVA_HOME%/bin"
doskey javar=javac $1.java$tjava $1 


::MAVEN
set "M2_HOME=D:/Programs/apache-maven-3.5.3"
set "MAVEN_HOME=D:/Programs/apache-maven-3.5.3"
set "M2=%M2_HOME%/bin"
set "MAVEN_OPTS=-Xms256m -Xmx512m"
set "PATH=%PATH%;%M2%"
doskey rvn=mvn clean compile assembly:single
