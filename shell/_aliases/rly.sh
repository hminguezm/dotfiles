alias stagingTunnel="sudo ssh ec2-user@54.94.173.35 -i $KEY_PIM"
alias stagingFTPTunnel="sudo ssh ec2-user@54.94.173.35 -i $KEY_PIM -L 12345:10.0.156.199:22"
alias stagingDBTunnel="sudo ssh ec2-user@54.94.173.35 -i $KEY_PIM -L 5433:localhost:5432"
alias stagingSidekiqTunnel="sudo ssh ec2-user@54.94.173.35 -i $KEY_PIM -L 8899:localhost:8899"
alias qaRipleySidekiqTunnel="sudo ssh pim-qa@10.215.11.68 -i $KEY_PIM_QA -L 5000:localhost:5000"

alias stagingRipleyTunnel="sudo ssh ec2-user@172.35.0.42 -i $KEY_PIM"
alias stagingRipleyFTPTunnel="sudo ssh ec2-user@172.35.0.42 -i $KEY_PIM -L 12345:10.0.156.199:22"
alias stagingRipleyDBTunnel="sudo ssh ec2-user@172.35.0.42 -i $KEY_PIM -L 5433:localhost:5432"
alias stagingRipleySidekiqTunnel="sudo ssh ec2-user@172.35.0.42 -i $KEY_PIM -L 8899:localhost:8899"

# PIM middleware
alias pimMiddlewareProd="sudo ssh -l pim-io pim.io@10.215.11.76 -i $KEY_PIM_MIDDLEWARE_PROP -L 5000:localhost:5000"


# Akeneo staging & production connection
alias stagingAkeneoCloud="ssh akeneo@ripley-chile-staging.cloud.akeneo.com -A -L 33006:localhost:3306"
alias AkeneoCloud="ssh akeneo@ripley-chile.cloud.akeneo.com -A -L 33007:localhost:3306"