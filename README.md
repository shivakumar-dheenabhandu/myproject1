# HT-DevOps


---

````md
# Maven Build Process Explained (DevOps Guide)

## Why do we need Maven?

You can create a JAR file without Maven using manual commands:

```bash
javac MyApp.java
jar -cvf app.jar *.class
````

But in real-world projects, this is not practical because:

* Projects contain many files
* External dependencies like Spring Boot, logging, JSON libraries
* Tests must be executed
* Build process must be automated and repeatable

Maven solves all these problems by automating the build lifecycle.

## Why not create JAR directly without Maven?

Without Maven, everything is manual.

With Maven, everything is automated.

Key differences:

* Without Maven: manual compilation and dependency handling
* With Maven: automatic compilation, dependency download, and packaging
* Without Maven: no standard structure
* With Maven: standard project structure used in all enterprise projects

## What is POM.xml?

POM stands for Project Object Model.

It is the main configuration file for a Maven project.

Maven reads this file to understand:

* What the project is
* What dependencies are required
* How to build the project
* How to package the application

### Project details

```xml
<groupId>com.devops</groupId>
<artifactId>demo-app</artifactId>
<version>1.0</version>
```

### Dependencies

```xml
<dependency>
  <groupId>org.springframework.boot</groupId>
  <artifactId>spring-boot-starter-web</artifactId>
</dependency>
```

Maven automatically downloads these dependencies from the Maven Central Repository.

### Build configuration

```xml
<build>
  <plugins>
    <plugin>
      <artifactId>spring-boot-maven-plugin</artifactId>
    </plugin>
  </plugins>
</build>
```

This tells Maven how to package the application into a JAR or WAR file.

## What happens when we run mvn clean package

This command executes multiple internal steps.

### Step 1: Read POM.xml

Maven first reads the pom.xml file to understand project configuration.

### Step 2: Clean phase

Removes old build files from the target folder.

### Step 3: Dependency download

Maven downloads all required libraries from Maven Central Repository and stores them locally in:

```
~/.m2/repository
```

### Step 4: Compile phase

Java source code is compiled from:

```
src/main/java
```

Compiled output is stored in:

```
target/classes
```

### Step 5: Test phase

Runs unit tests from:

```
src/test/java
```

### Step 6: Package phase

Creates the final deployable JAR file:

```
target/demo-app-1.0.jar
```

### Step 7: Spring Boot packaging (if used)

If Spring Boot Maven plugin is present:

* Dependencies are bundled inside the JAR
* Embedded server like Tomcat is added
* Final output becomes an executable fat JAR

## Simple analogy

Think of Maven like a delivery system.

POM.xml is the order request.

Dependencies are items from suppliers.

Compile is packing the items.

Package is creating the final box.

Final JAR is the delivered package.

## Final summary

Maven is used to automate build, dependency management, and packaging.

POM.xml is the configuration file that defines the project structure and build process.

When you run mvn clean package:

* Maven reads pom.xml
* Cleans old builds
* Downloads dependencies
* Compiles code
* Runs tests
* Packages application into a JAR file

## Output

The final JAR file is created at:

```
target/demo-app-1.0.jar
```

```

---

