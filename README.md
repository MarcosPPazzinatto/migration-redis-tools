# migration-redis-tools

A set of shell scripts to simplify the backup and restore process of Redis data using S3-compatible storage.  
This tool was designed to streamline Redis migration tasks between environments or cloud providers.

## Features

- Environment configuration support
- Redis RDB dump generation
- File transfer to and from S3
- Automated restore from dump
- Modular and easy-to-adapt scripts

## Folder Structure

```
migration-redis-tools/
├── LICENSE
├── README.md
└── src/
├── config_environment.sh # Sets environment variables
├── dump_redis.bash # Generates Redis RDB dump
├── get_files_s3.bash # Downloads dump files from S3
├── restore.sh # Restores Redis from local dump
└── transfer_s3.bash # Uploads dump files to S3
```

## Requirements

- `redis-cli`
- `aws-cli`
- `redis-tools`
- `bash` or `sh` compatible shell

## Usage

1. Configure your environment:

   ```
   source src/config_environment.sh
   ```
2. Generate the Redis dump:

```
   bash src/dump_redis.bash

```
3. Transfer the dump to S3:

```
   bash src/transfer_s3.bash
```

4. Download the dump from S3:

```
   bash src/get_files_s3.bash
```

5. Restore Redis:

```
   bash src/restore.sh
```


## License
MIT © Marcos Paulo Pazzinatto
