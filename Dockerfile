FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
WORKDIR /predict_app
## Step 2:
# Copy source code to working directory
COPY app.py /predict_app/
COPY model_data /predict_app/model_data
COPY requirements.txt /predict_app/

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD ["python", "app.py"]

