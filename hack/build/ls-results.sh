
#!/bin/bash 

SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

kubectl get pipelineruns --no-headers -o custom-columns=":metadata.name" | \
xargs -n 1 -I {}  $SCRIPTDIR/show-results.sh {}