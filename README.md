# b2 sync cron

Simple container for running backblaze's b2 sync utility using cron

## Example 


```yaml
version: '3'
services:
  b2_sync:
    image: nnarain/b2_sync
    container_name: b2_sync
    environment:
      - BUCKET_NAME=${B2_BUCKET_NAME}
      - B2_APPLICATION_KEY_ID=${B2_KEY_ID}
      - B2_APPLICATION_KEY=${B2_APP_KEY}
      - INPUT_DIR=/backup
    volumes:
      - backup_data:/backup:ro
    restart: unless-stopped
```
