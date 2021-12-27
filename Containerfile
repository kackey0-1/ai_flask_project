FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN ai_flask_project create-db
RUN ai_flask_project populate-db
RUN ai_flask_project add-user -u admin -p admin
EXPOSE 5000
CMD ["ai_flask_project", "run"]
