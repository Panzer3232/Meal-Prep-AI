#  Python image 
FROM python:3.10-slim

# working directory in the container
WORKDIR /app

# Copy  contents into the container at /app
COPY . /app

# Install  packages specified in requirements.txt
RUN pip install --no-cache-dir --timeout=60 -i https://pypi.tuna.tsinghua.edu.cn/simple -r requirements.txt

# Make port 5000 available 
EXPOSE 5000

# Define environment variable
ENV FLASK_APP=app.py

# Run app.py 
CMD ["flask", "run", "--host=0.0.0.0"] 