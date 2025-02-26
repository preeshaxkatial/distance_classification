FROM python:3.12.9 

WORKDIR /app

COPY . .

RUN pip install numpy pandas scikit-learn wandb opencv-python matplotlib

RUN apt-get update && apt-get install -y \
    libgl1-mesa-glx \
    libglib2.0-0

CMD ["python", "distance_classification.py"]
