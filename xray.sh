#!/bin/sh
if [ ! -f UUID ]; then
  UUID="f54d0b87-436e-4e66-87b1-dd70b4c211e3"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

