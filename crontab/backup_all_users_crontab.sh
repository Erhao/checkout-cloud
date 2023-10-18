cat /share/ops/checkout-cloud/crontab/ldap.users | awk '{print "crontab -u " $0 " -l > /etc/crontab." $0 ".bak.231019"}' | bash -

crontab /share/ops/checkout-cloud/crontab/empty.crontab