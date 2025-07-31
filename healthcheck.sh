
# 📌 Make sure you make it executable:
# chmod +x healthcheck.sh

#!/bin/sh
curl --fail http://localhost:80 || exit 1
