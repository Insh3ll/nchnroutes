produce:
	git pull
	curl -o ipv4-address-space.csv https://www.iana.org/assignments/ipv4-address-space/ipv4-address-space.csv
	curl -o delegated-apnic-latest https://ftp.apnic.net/stats/apnic/delegated-apnic-latest
	# curl -o china_ip_list.txt https://raw.githubusercontent.com/17mon/china_ip_list/master/china_ip_list.txt
	curl -o china_ip_list.txt https://raw.githubusercontent.com/pmkol/easymosdns/rules/china_ip_list.txt
	python3 produce.py
	# sudo mv routes4.conf /etc/bird/routes4.conf
	# sudo mv routes6.conf /etc/bird/routes6.conf
	# sudo birdc configure
	# sudo birdc6 configure
