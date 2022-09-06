
# API testing using the Karate Framework

This sample project includes api testing with Karate Framework

## What is Karate Test Framework?
Karate is an external domain-specific language based on Gherkin language to create API, Web UI, and Desktop UI tests. It was first published by Peter Thomas in early 2017, and it gained traction pretty fast. It was first mentioned on Thoughtworks Technology Radar in April 2019 as a language/framework to assess. In May 2020 it moved up to trial. It counts currently about ~4.2k GitHub stars. That’s quite an impressive career for a tool that’s round for about 4 years.

## Getting Started 
We required the below tools to test the API using karate framework.

⁕ Karate requires Java 8 (at least version 1.8.0_112 or greater) 
  → https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html

⁕ Intellij 
  → https://www.jetbrains.com/idea/download/#section=windows (Maven, Gradle or Eclipse to be installed.)

⁕ karate plugin

⁕ Karate Github
  → https://github.com/intuit/karate

⁕ Dummy Demo site
  → https://reqres.in
  
  → https://gorest.co.in/

## Running in IntelliJ
If you use IntelliJ IDEA, download the plugins before starting the work.

## Create the new project 
Let's create a brand new Maven project. From the Welcome Screen select New Project, or if you already have an IntelliJ IDEA project open, select File -> New -> Project... Select Maven from the options on the left, and choose the JDK for the project.

![pic1](https://user-images.githubusercontent.com/111106737/185327841-abc1f5a0-63b7-4ec9-8afd-4945d819f1c9.png)

Press the ADD button and declare a group id, the artifact id and version.( refer the karatelabs official documentation for the version).

![pic2](https://user-images.githubusercontent.com/111106737/185332605-9a5fd41e-0292-40e9-9759-06d665382f61.png)


## Maven Dependency

As well as creating the basic pom.xml, IntelliJ IDEA has also created the default directory structure for a Maven project with the source and test folders defined.

<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>
 
    <groupId>org.example</groupId>
    <artifactId>Karate_API_testing</artifactId>
    <version>1.0-SNAPSHOT</version>
    <packaging>jar</packaging>
 
    <properties>
        <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
        <java.version>1.8</java.version>
        <maven.compiler.version>3.8.1</maven.compiler.version>
        <maven.surefire.version>2.22.2</maven.surefire.version>        
        <karate.version>1.2.0</karate.version>
    </properties>    

    <dependencies>         
        <dependency>
            <groupId>com.intuit.karate</groupId>
            <artifactId>karate-junit5</artifactId>
            <version>${karate.version}</version>
            <scope>test</scope>
        </dependency>		
    </dependencies>

    <build>
        <testResources>
            <testResource>
                <directory>src/test/java</directory>
                <excludes>
                    <exclude>**/*.java</exclude>
                </excludes>
            </testResource>
        </testResources>
        <plugins>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-compiler-plugin</artifactId>
                <version>${maven.compiler.version}</version>
                <configuration>
                    <encoding>UTF-8</encoding>
                    <source>${java.version}</source>
                    <target>${java.version}</target>
                    <compilerArgument>-Werror</compilerArgument>
                </configuration>
            </plugin>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-surefire-plugin</artifactId>
                <version>${maven.surefire.version}</version>
                <configuration>
                    <argLine>-Dfile.encoding=UTF-8</argLine>
                </configuration>
            </plugin>          
        </plugins>        
    </build>       
    
</project>

## karate-config.js
This is where you can create variables which have a global scope. Karate reads this file before executing any scenario. This comes in very handy when switching environments which specific variables are used for different environments

![pic6](https://user-images.githubusercontent.com/111106737/185389893-469b24f9-d142-46ed-8706-f65f6e907f22.png)

## create the .feature files
Karate tool provides you with the step definitions. We just need to follow the Karate DSL syntax. To create a feature file, right click on the Project explorer, choose New >> File. Give a name to the feature file. Select the features file from src/test/java.

![pic3](https://user-images.githubusercontent.com/111106737/185337756-91ba9ce6-5161-4f1f-a954-bf87afe147c0.png)

create the scenario, using the dummy demo site.
(https://reqres.in/api/users?page=2)

### Gherkin Keywords
The keyword Feature: defines a high-level description and groups the scenarios.

Background: is used to define a code block that Karate executes every time before it runs a Scenario. This is analog to the setUp method of unit test.
The Scenario keywords define the test case itself like your test methods in java and each feature file may contain one or more Scenarios.

Gherkin defines the following keywords that define the start of a statement.

* Given
* When
* Then
* But
* And
* "*"

  You can use these keywords to make your test more readable, but these keywords don’t affect how Karate executes the Scenario. They are completely interchangeable and you can use whatever you want. You just have to use one of these keywords to start a step definition, because it’s defined in the Gherkin syntax that way.

However, I would suggest using these keywords in a reasonable order, because having “Given, When, Then” in the right order creates a much better reading experience than a wrong order or just *.

### Karate Keywords
These keywords are Karate keywords:

* url: Defines the base URL that Karate uses for the next web request.
* path: Specifies additional path fragments. The framework adds these fragments to your URL.
* def: Marks the start of a variable declaration.
* method: Sets the HTTP method that Karate uses to make request, and it marks point where Karate executes the web request.
* status: Represent a HTTP response code assertion. If the returned response code doesn’t match the specified one, Karate will mark this test as failed.


## Test report
Karate generates an HTML report that provides a more visual overview of the executed Features & Scenarios and that helps you in case your CI pipeline failed to track down the cause. The last message on the standard printed by karate is a quick link to that report:

![pic5](https://user-images.githubusercontent.com/111106737/185367316-94f03049-e86e-4c4b-90b2-11f4fd597acb.png).


Reference links

1) https://github.com/karatelabs/karate - official documentation

2) https://software-that-matters.com/2020/11/25/the-definitive-karate-api-testing-framework-getting-started-guide/

3) https://devqa.io/karate-api-testing-tool-cheat-sheet/

4) https://priyankab85.medium.com/understanding-gherkin-keywords-and-karate-dsl-script-structure-2574c92e4e1b
