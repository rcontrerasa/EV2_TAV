echo "FROM python" > Dockerfile
echo "RUN apt-get update -y" >> Dockerfile
echo "RUN apt-get install python-pip -y" >> Dockerfile
echo "RUN pip install flask -y" >> Dockerfile
echo "COPY index.html /home/ev2/templates/  " >> Dockerfile
echo "COPY ev2.py /home/ec2/ " >> Dockerfile
echo "CMD ["python3", ["/home/ev2/eva2.py"]" >> Dockerfile

docker build -t jenkflask .
docker run -t -d -p 5949:8080 --name jenkflask jenkflask
docker ps -a
