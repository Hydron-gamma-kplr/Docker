FROM python:3.8
WORKDIR /app
COPY ./Requirements.txt  /app/Requirements.txt
RUN pip install -r Requirements.txt
COPY  . .
EXPOSE 5000
ENV FLASK_APP=app.py
CMD ["flask", "run", "--host=0.0.0.0"]
