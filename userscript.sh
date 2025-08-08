#!/bin/bash

echo "Full records with /bin/bash:" > password
grep '/bin/bash' /etc/passwd >> password

echo "Usernames with /bin/bash:"
awk -F: '$NF=="/bin/bash" {print $1}' /etc/passwd
