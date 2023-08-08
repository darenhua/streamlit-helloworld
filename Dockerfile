FROM python:3.11.4

RUN mkdir /app
WORKDIR /app
RUN mkdir .streamlit

COPY main.py .
COPY requirements.txt .
COPY .streamlit/config.toml ./.streamlit

RUN pip3 install -r requirements.txt
CMD [ "streamlit", "run", "main.py" ]
EXPOSE 8080
