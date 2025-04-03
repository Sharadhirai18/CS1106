#!/bin/bash
tar -cf /tmp/var_log.tar /var/log
gzip /tmp/var_log.tar
ls -l /tmp/var_log.tar.gz
