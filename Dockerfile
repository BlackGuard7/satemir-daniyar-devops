FROM ubuntu:latest
WORKDIR /app
COPY . /app
RUN apt-get update && apt-get install -y bash
EXPOSE 8080
CMD ["bash", "-c", "echo 'DevOps Student Application'; echo \"Name: $STUDENT_NAME\"; echo \"Surname: $STUDENT_SURNAME\"; echo \"Group: $STUDENT_GROUP\"; echo \"Student ID: $STUDENT_ID\"; echo 'Application is running successfully!'"]
