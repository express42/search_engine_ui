FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
COPY requirements-test.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --no-cache-dir -r requirements-test.txt

COPY tests tests
COPY ui ui

EXPOSE 8000

CMD [ "/usr/local/bin/gunicorn", "--chdir" ,"ui","-b", "0.0.0.0", "ui:app"]
