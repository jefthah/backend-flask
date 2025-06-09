# Pilih image dasar Python (gunakan versi yang sesuai, misalnya Python 3.8)
FROM python:3.8-slim

# Set working directory di dalam container
WORKDIR /app

# Menyalin semua file dari direktori lokal ke container
COPY . /app

# Install pip dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Menjalankan aplikasi Flask pada port 8000
CMD ["python", "api/face_api.py"]
