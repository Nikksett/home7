Підключитись до інстансу

ssh -i "labs.pem" ubuntu@ip інстансу

Проксі

ssh -i "labs.pem" -D 8899 ubuntu@ip інстансу

Пайтон Сервер

ssh -i "labs.pem" -R 7788:localhost:8000 ubuntu@ip інстансу
