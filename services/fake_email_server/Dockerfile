FROM python:3
ENV PYTHONUNBUFFERED 1
EXPOSE 8025
ENTRYPOINT ["python", "-m", "smtpd", "-n", "-c", "DebuggingServer", "0.0.0.0:8025"]