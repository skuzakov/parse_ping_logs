# parse_ping_logs
Чтобы запустить парсинг, необходимо ввести команду
awk -vip='192.168.1.14' -f ping.awk Segment8-Segment*.csv | parse.sh >> $path_to_file

здесь мы подставляем значение source ip т.к. в логах есть только destination
