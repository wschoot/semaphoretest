#!/bin/bash

if [ "$1" == "--list" ] ; then
cat<<EOF
{
  "bash_hosts": {
	"hosts": [
	  "10.10.10.124"
	],
	"vars": {
	  "host_proxy_var": "proxy2"
	}
  },
  "_meta": {
	"hostvars": {
	  "10.10.10.124": {
		"host_specific_var": "testhost"
	  }
	}
  }
}
EOF
elif [ "$1" == "--host" ]; then
  echo '{"_meta": {"hostvars": {}}}'
else
  echo "{ }"
fi
