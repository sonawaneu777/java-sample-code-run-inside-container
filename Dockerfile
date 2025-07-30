# Use official Java base image
FROM openjdk:21-slim

# Set working directory
WORKDIR /app

# Copy your local codebase into the container
COPY . .

# Create build directory and compile Java code inside /javacode
RUN mkdir -p build && javac -d build javacode/*.java

# Accept class name at runtime and execute it
ENTRYPOINT ["sh", "-c", "java -cp build $0"]
