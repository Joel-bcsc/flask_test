# Dockerfile

# Pull base image
FROM python:3.7-alpine

# Set working directory
RUN mkdir /code
WORKDIR /code

# Install dependencies
COPY . /code/
RUN pip install -r requirements.txt

# Run python file within container
ENTRYPOINT [ "./hello-world.py" ]
CMD [ "flask", "run", "--host=0.0.0.0" ]
