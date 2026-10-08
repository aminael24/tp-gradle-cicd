FROM eclipse-temurin:11-jdk AS builder

WORKDIR /project
COPY . .
RUN chmod +x gradlew
RUN ./gradlew --no-daemon installDist

FROM eclipse-temurin:11-jre

WORKDIR /app
COPY --from=builder /project/build/install/simple-gradle-java-app/ ./

ENTRYPOINT ["/app/bin/simple-gradle-java-app"]
