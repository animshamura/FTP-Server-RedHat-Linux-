yum install vsftpd

systemctl start vsftpd

systemctl enable vsftpd

systemctl status vsftpd 

firewall-cmd --zone=public --permanent --add-port=21/tcp
firewall-cmd --zone=public --permanent --add-service=ftp
firewall-cmd --reload

cp /etc/vsftpd/vsftpd.conf /etc/vsftpd/vsftpd.conf.orig

semanage boolean -m ftpd_full_access –on

systemctl restart vsftpd

useradd -m -c “Shamura Anim, CEO” -s /bin/bash shamura
passwd shamura

echo "shamura" | tee -a /etc/vsftpd.userlist
cat /etc/vsftpd.userlist

mkdir /home/shamura/ftp
chown nobody:nobody /home/shamura/ftp
chmod a-w /home/shamura/ftp

mkdir /home/shamura/ftp/files
chown ravi:ravi /home/shamura/ftp/files
chmod 0700 /home/ravi/shamura/files/

systemctl restart vsftpd

ftp 192.168.2.13
