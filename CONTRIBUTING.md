# Contributing to Gelecek Bilimde

Thank you for your interest in contributing to the Gelecek Bilimde project! We appreciate your efforts and look forward to your contributions. To maintain a collaborative and inclusive environment, please review the following guidelines before you start.

## How to Contribute

1.  **Clone the Repository**
    - Visit our GitHub repository and clone it to your local environment.
    - In order to set up the development environment you can read the [README.md](https://github.com/gelecekbilimde/gelecekbilimde-backend/blob/main/README.md) documentation.

2. **Create a New Branch**
    - Create a branch for your contribution.
    - Ensure your feature branch is associated with the corresponding GitHub issue from the 'Development' section in each issue page.

3. **Make Changes**
    - Implement your changes in the branch you created.
    - Thoroughly test your changes to ensure they work as expected.

4. **Commit Changes**
    - Commit your changes with clear and concise messages. Refer to the [Commit Messages](#commit-messages) section for guidance.

5. **Push Changes**
    - Push your changes to your forked repository.

6. **Open a Pull Request (PR)**
    - Open a PR against the main branch of the original repository.
    - Provide a detailed description of your changes in the PR.
    - Link relevant issues or discussions in the PR description.

7. **Review and Feedback**
    - Once your PR is submitted, project maintainers will review it and provide feedback.
    - Be responsive to feedback and make necessary changes.

## Development Standards

### Branch Naming Conventions:

Use the following format for branch names:

* bugfix/{jira-issue-number}/{optional-description}
* feature/{jira-issue-number}/{optional-description}
* refactor/{jira-issue-number}/{optional-description}
* documentation/{jira-issue-number}/{optional-description}
Example: feature/GBS-1/add-feature-to-handle-user-authentication

### Pull Request Naming Conventions:

Use the following format for pull request titles:

* {jira-issue-number} | {header-for-summary-of-development}
Example: GBS-1 | Add feature to handle user authentication

### Branch Linkage: 
* Link your feature branch to the corresponding GitHub issue.
* Protected Main Branch: The main branch is protected.

### PR Requirements:

* PR should be linked to the relevant issue within the GitHub Project.
* Only one code owner's approval is needed for merging feature branches.
* PR should pass build and necessary tests before merging.
* Resolve comments within the PR by the commenter.
* PR should be concise and address one specific issue or feature.

### Security: 
* Avoid including secret or credential information in your code.

### Coding Standards: 
* Ensure your code complies with existing coding standards; do not introduce new standards without justification.

### Branch Management:
* Delete the branch after merging.

### API Documentation: 
* Share the relevant Postman collection for any endpoint you’ve developed.

### Testing: 
* Add unit tests and Javadocs (or relevant documentation) for each method you’ve implemented.

### Bug Reporting:
* If your development includes known bugs, explain them in detail in the related discussion page. You can also report bugs with screenshots and code snippets.

## Code Review

* Code reviews are a crucial part of our development process to ensure code quality and maintainability. Here's how you can contribute effectively during code reviews:

### Review Guidelines

- **Understand the Context**: Before reviewing, understand the purpose of the changes and the problem they solve. Check the linked issue or discussion for background.
- **Be Constructive**: Provide feedback that is clear, constructive, and actionable. Suggest improvements rather than just pointing out issues.
- **Focus on Key Areas**: Pay attention to:
    - **Code readability**: Is the code easy to understand? Are there comments where needed?
    - **Compliance with Standards**: Does the code follow the project’s coding standards and best practices?
    - **Testing**: Has the code been properly tested? Are there unit tests covering the new or changed functionality?
    - **Security**: Are there any potential security vulnerabilities?

### Providing Fixes and Resources

- **Detailed Feedback**: When identifying issues, provide a detailed explanation of the problem and, if possible, suggest resources for the contributor to learn from or reference.
    - Example: "This method could be optimized for performance. Consider reviewing the Java Streams documentation here."
- **Resource Sharing**: If you know of articles, documentation, or examples that can help the contributor improve their code, share them in your review comments.


## Code Cleanliness

To maintain clean and understandable code, we encourage the following practices:

### Avoiding TODO Comments

Instead of leaving TODO comments in the codebase, consider converting them into GitHub issues. This helps in tracking and managing tasks more effectively. Once an issue is created, you can discuss and prioritize it accordingly. After addressing the issue, you can close it, ensuring that our code remains free of unnecessary TODOs.

### Minimal Use of Comments

We aim for self-explanatory code that minimizes the need for comments. Instead of explaining what the code does, focus on writing code that is clear and expressive. Comments should be used sparingly and only when necessary to explain why certain decisions were made or to clarify complex logic.

By adhering to these practices, we can maintain a cleaner and more maintainable codebase.

## Java Spring Boot Coding Guidelines

To ensure that all code contributions are clean, maintainable, and consistent, please follow these basic Java Spring Boot coding guidelines:

1. **Project Structure**
    - Follow the standard Spring Boot project structure:
        - `src/main/java` for application code.
        - `src/main/resources` for configuration files.
        - `src/test/java` for test classes.
    - Organize packages by feature, not by technical layers. For example, instead of separate packages for controllers, services, and repositories, group related classes together by functionality. Look at our architecture, we have separated the controllers of each part, such as controllers of post inside of posts and controllers of user inside of user.

2. **Dependency Injection**
    - Prefer constructor injection over field injection for mandatory dependencies. This makes your classes easier to test and maintain.
    - Avoid using `@Autowired` on fields. Use constructor injection instead.
    - You can use Lombok and `@RequiredArgsConstructor` with a final keyword for the property.

3. **Controller Design**
    - Keep controllers lean by delegating business logic to service layers. Controllers should handle request validation, calling services, and returning responses.
    - Use `@RestController` for APIs and return `ResponseEntity` where appropriate.

4. **Service Layer**
    - Business logic should reside in service classes, annotated with `@Service`.
    - Services should be stateless. Avoid maintaining state in service classes to prevent issues in a multi-threaded environment.

5. **Repository Layer**
    - Use Spring Data JPA repositories for database interactions. Name repository methods following Spring Data conventions (e.g., `findByName`, `deleteById`).

6. **Exception Handling**
    - Implement centralized exception handling using `@ControllerAdvice` and `@ExceptionHandler`.
    - Define custom exception classes for specific error scenarios to make error handling more descriptive.

7. **Logging**
    - Use `slf4j` for logging and inject the logger using `@Slf4j` annotation.
    - Log at appropriate levels (DEBUG, INFO, WARN, ERROR), and avoid logging sensitive information.
    - Use structured logging where possible to improve log readability and searchability.

8. **Configuration Management**
    - Externalize configurations using `application.properties` or `application.yml`. Avoid hardcoding configurations in your code.

9. **Code Quality**
    - **Naming Conventions**:
        - Classes and Interfaces: Use PascalCase. Class names should be nouns or noun phrases (e.g., `UserService`, `OrderRepository`).
        - Methods: Use camelCase. Method names should be verbs or verb phrases (e.g., `calculateTotal`, `findByName`).
        - Variables: Use camelCase. Choose meaningful names that convey the purpose (e.g., `orderTotal`, `userList`).
        - Constants: Use UPPER_SNAKE_CASE for constants (e.g., `MAX_RETRY_COUNT`).
    - **Writing Clean Methods**:
        - **Single Responsibility Principle**: Each method should perform a single task. If a method is doing more than one thing, consider breaking it into smaller methods.
        - **Method Length**: Keep methods short, ideally within 20-30 lines of code. If a method exceeds this, it likely needs refactoring.
        - **Descriptive Names**: Use descriptive names for methods that clearly state their intent. Avoid vague names like `doStuff` or `handleData`.
        - **Parameters**: Limit the number of method parameters. More than three parameters might indicate that the method is doing too much. Consider creating a class to encapsulate parameters if needed.
        - **Avoid Side Effects**: Methods should not produce unexpected side effects. They should do what they are named to do and nothing else.
    - **Commenting and Documentation**:
        - **Use Comments Sparingly**: Aim to write self-explanatory code. Use comments to explain why something is done, not what is done. For example, avoid comments like `// increment i` when `i++` is self-explanatory.
        - **JavaDocs**: Provide JavaDocs for all public methods and classes. Include descriptions of parameters, return values, and any exceptions thrown.
        - **TODOs**: If you need to leave a note for future improvement, use `// TODO: ...` with a clear explanation.
    - **Proper Use of Exceptions**:
        - **Checked vs. Unchecked Exceptions**: Use checked exceptions for recoverable conditions and unchecked exceptions for programming errors. Avoid using exceptions for control flow.
        - **Custom Exceptions**: Create custom exception classes for specific error scenarios. This makes error handling more meaningful and readable.
        - **Exception Handling**: Handle exceptions at the appropriate level in the code. Avoid catching generic exceptions like `Exception` or `Throwable`.
    - **Code Structure and Readability**:
        - **Consistent Formatting**: Follow consistent code formatting. Use an IDE formatter to maintain consistent indentation, spacing, and brace placement.
        - **Indentation**: Use 4 spaces for indentation. Avoid tabs.
        - **Blank Lines**: Use blank lines to separate logical blocks of code, but avoid excessive blank lines.
        - **Braces**: Use braces even for single-line `if`, `for`, `while`, etc., statements to avoid errors during code modifications.
        - **Class Organization**: Follow this order within a class:
            - Constants
            - Fields
            - Constructors
            - Public methods
            - Private methods
    - **Object-Oriented Design Principles**:
        - **Encapsulation**: Keep fields private and expose only necessary methods. Use getters and
   - **Encapsulation**: Keep fields private and expose only necessary methods. Use getters and setters thoughtfully.
   - **DRY (Don’t Repeat Yourself)**: Avoid code duplication by extracting common functionality into methods or utility classes.
   - **SOLID Principles**:
       - **Single Responsibility**: A class should have only one reason to change.
       - **Open/Closed**: Classes should be open for extension but closed for modification.
       - **Liskov Substitution**: Subclasses should be substitutable for their base classes.
       - **Interface Segregation**: Clients should not be forced to implement interfaces they do not use.
       - **Dependency Inversion**: Depend on abstractions, not on concrete implementations.
   - **Best Practices**:
       - **Avoid God Objects**: Avoid creating classes that know too much or do too much. This leads to high coupling and low cohesion.
       - **Use Design Patterns**: Apply design patterns like Singleton, Factory, Strategy, and Observer where appropriate to solve common design problems.
       - **Immutability**: Favor immutable objects, especially in multi-threaded environments. Use `final` where possible.
       - **Avoid Primitive Obsession**: Replace primitive types with small objects for better abstraction and readability.
   - **Code Reviews**:
       - **Automated Checks**: Use static analysis tools like SonarQube, Checkstyle, and PMD to enforce coding standards and identify potential issues early.
   - **Performance Considerations**:
       - **Avoid Premature Optimization**: Write clear and correct code first. Optimize only when necessary, and after identifying bottlenecks.
       - **Lazy Initialization**: Use lazy initialization to delay the creation of objects or execution of heavy operations until they are actually needed.
       - **Efficient Algorithms**: Choose efficient algorithms and data structures that best fit your use case. Consider time and space complexity.

## Commit Messages

To maintain a consistent commit history, start your commit messages with a keyword that describes the type of change:
- **feat**: Use for new features.
- **imp**: Use for improvements or refactoring of existing features.
- **fix**: Use for bug fixes (including hotfixes).
- **refactor**: Use for code optimization or restructuring without changing functionality.
- **docs**: Documentation related changes (e.g., updating README.md, adding comments)
- **style**: Code style changes (e.g., formatting, semicolons)
- **test** Adding or modifying tests
- **chore** Routine tasks, maintenance, or tooling changes that don’t affect the main codebase
- **perf** Performance improvements
- **revert** Reverting a previous commit

### Example Commit Messages:
- `#1 | feat: Implemented the Post service`
- `#2 | imp: Added timestamp to API responses`
- `#3 | fix: Resolved permission error when editing user's comment`


## API Response Examples

### Successful Responses (200, 201, 207)

```json
{
   "statusText": "OK",
   "status": 200,
   "list": {
       "message": "API version: 0.0.1"
   },
   "count": 1,
   "timestamp": "2023-05-31 21:58:45",
   "request": {
       "args": {
           "v": "v1"
       },
       "path": "http://localhost:8057/api/version",
       "params": {
           "param1": "44",
           "param2": "123"
       }
   },
   "responseCode": "43e9f812-8a7c-49f9-812e-024ee0705f9b"
}
```

### Error Responses (400, 401, 404, 405, 422, 500, 503)

```json
{
   "path": "/api/version",
   "message": "Version not retrieved",
   "status": 400,
   "statusText": "BAD_REQUEST",
   "method": "GET",
   "args": {},
   "errorCode": "0ada5a5c-6834-4df6-9452-ddf6c64b03a8",
   "timestamp": "2023-05-31 22:19:07"
}
```
