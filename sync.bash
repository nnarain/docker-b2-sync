#/bin/bash

/usr/local/bin/b2 sync --delete --replace-newer ${INPUT_DIR} b2://${BUCKET_NAME}/

