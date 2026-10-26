#!/bin/bash
# Hämtar filerna från S3-bucketen till Apache.
# Körs på EC2-instansen. Inga nycklar behövs, AWS CLI hämtar
# tillfälliga uppgifter från instansens roll automatiskt.
set -euo pipefail

BUCKET=novatrix-mov25

sudo aws s3 sync "s3://$BUCKET/" /var/www/html/
ls -l /var/www/html/
