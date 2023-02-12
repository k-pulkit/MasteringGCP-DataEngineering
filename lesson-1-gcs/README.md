# Google Cloud Object Storage

GCS is similar to object storage offering on other cloud platfoms, such as S3 in AWS.
Some of the key point about GCS - 
1. The data in GCS can be made redundant and highly available by using multi-region approach
2. There are 4 storage classes available based on type of use-case: standard which is default, near-line, cold-line and archive
3. GCS consists if buckets where files or object transferred are stored in a flat hierarchy, with the directory structure being more of a prefix
4. You can control access to buckets using policies, ACLs
5. Automatic versioning can be enabled, to keep different copies of modified files
6. Other than this, there is option to enable retention policy for complaince as well as life-cycle policies to automatically change storage class or wipe non-current versions of objects

```shell
# Common pattern os using GCS with shell 
gsutil mb gs://<bucket-name>

# To explore a command use
gsutil help ls
```

