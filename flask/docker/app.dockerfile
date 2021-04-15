  
FROM python:3.7-alpine
WORKDIR /project

# Set ENV variables.
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Install flask.
RUN python -m pip install flask

# Copy startup project file over.
COPY app.py .

EXPOSE 5000
CMD ["flask", "run"]