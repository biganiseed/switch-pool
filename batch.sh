# Set your configuration that is common for all machines.
SSH_USER="admin"
SSH_PASSWORD="admin"
POOL_ACCOUNT="biganiseed@gmail.com"
POOL_URL="asia.pool.easygrin.org:3001"
POOL_PASSWORD="x"
POOL_SPLITOR="."

# Copy and paste to a line for each machine, change the parameters specific to the machine.
source switch.sh 192.168.0.100 mini $SSH_USER $SSH_PASSWORD $POOL_ACCOUNT $POOL_URL $POOL_PASSWORD $POOL_SPLITOR
source switch.sh 192.168.0.101 mini2 $SSH_USER $SSH_PASSWORD $POOL_ACCOUNT $POOL_URL $POOL_PASSWORD $POOL_SPLITOR