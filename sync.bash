#/bin/bash

/usr/local/bin/b2 sync --delete --replaceNewer ${INPUT_DIR} b2://${BUCKET_NAME}/

