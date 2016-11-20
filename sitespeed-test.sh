sudo docker-compose run sitespeed --privileged --shm-size=512m --rm -n 2 --graphite.host=dev-sitespeed.dentaldepartures.com --FirstParty=.medicaldepartures.com --browsertime.delay=5000 http://www.medicaldepartures.com
#sudo docker run --privileged --shm-size=512m --rm -v /home/ubuntu/sitespeed:/sitespeed.io sitespeedio/sitespeed.io:latest -n 2 --graphite.host=dev-sitespeed.dentaldepartures.com --FirstParty=.medicaldepartures.com --browsertime.delay=5$
#sudo docker run --privileged --shm-size=512m --rm -v /home/ubuntu/sitespeed:/sitespeed.io sitespeedio/sitespeed.io:latest -n 2 --graphite.host=dev-sitespeed.dentaldepartures.com --FirstParty=.dentaldepartures.com --browsertime.delay=50$
#sudo docker run --privileged --shm-size=512m --rm -v /home/ubuntu/sitespeed:/sitespeed.io sitespeedio/sitespeed.io:latest -n 2 --graphite.host=dev-sitespeed.dentaldepartures.com --FirstParty=.dentaldepartures.com --browsertime.delay=50$
#sudo docker run --privileged --shm-size=512m --rm -v /home/ubuntu/sitespeed:/sitespeed.io sitespeedio/sitespeed.io:latest -n 2 --graphite.host=dev-sitespeed.dentaldepartures.com --FirstParty=.medicaldepartures.mx --browsertime.delay=50$
#sudo docker run --privileged --shm-size=512m --rm -v /home/ubuntu/sitespeed:/sitespeed.io sitespeedio/sitespeed.io:latest -n 2 --graphite.host=dev-sitespeed.dentaldepartures.com --FirstParty=.dentaldepartures.com --browsertime.delay=50$

sudo mv /home/ubuntu/sitespeed/sitespeed-result /home/ubuntu/sitespeed/sg
s3cmd put -r /home/ubuntu/sitespeed/sg s3://sitespeed-result
sudo rm -rf /home/ubuntu/sitespeed/sg

