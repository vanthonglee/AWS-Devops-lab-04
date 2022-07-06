FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY app.py /app/app.py
COPY requirements.txt /app/requirements.txt
COPY model_data/boston_housing_prediction.joblib /app/model_data/boston_housing_prediction.joblib
COPY . templates/ /app/templates/

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN make setup 
RUN source ~/.devops/bin/activate
RUN make install
RUN make lint

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD [ "python", "app.py" ]
