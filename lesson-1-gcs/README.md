# Google Cloud Object Storage

##### _Related code and notebooks_
1. <a href="./buckets.sh">buckets.sh</a> - Contains the use of shell tool `gsutil` to access GCS
2. <a href="./setting-up-data-lake-gcs-notebook.ipynb">setting-up-data-lake-gcs-notebook.ipynb</a> - Python notebook where we use the google cloud module to control GCS storage  

----
##### Info on Google Cloud Storage

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

In addition to using the shell tool `gsutil` to access the storage system, we can also take help of different of the API for programming languages like Python. To enable this, we need to install the python library for google cloud using -

```shell
pip3 install google-cloud-storage
```

A very detailed notebook has been created where we understand the differend APIs to read and write data to and from GCS

## Key learnings
1. We can use shell tool `gsutil` to interact with GCS
2. Google-cloud-storage module has the APIs to programatically interact with GCS using python
3. We can directly read and write files from GCS using Pandas, with the help of `gcsfs` library





