## crontab一键备份+注释

### uc share导出所有ldap用户
slapcat
### 手动提取所有uid到tx:/share/ops/ldap.users, 额外加上root

### 备份+注释普通用户crontab. uc main执行
cd /share/ops/checkout-cloud/crontab
pssh -i -h .mod_crontab.hosts -t 0 -- 'bash /share/ops/checkout-cloud/crontab/backup_all_users_crontab.sh'

### ssh exporter_host单独执行备份+注释
bash /share/ops/checkout-cloud/crontab/backup_all_users_crontab.sh

### 备份+注释uc main自身crontab
bash /share/ops/checkout-cloud/crontab/backup_all_users_crontab.sh
