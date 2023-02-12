# In this file are the list of commands that I learnt to manage buckets on GCS using gsutil command line tool, plus how to use help

# 1. Create the bucket
gsutil mb -b on -c standard --autoclass --placement us-east1,us-east4 gs://<bucket-name>
gsutil ls

# Copy Files
gsutil -m cp -R ./data/retail_db gs://<bucket-name>/data
gsutil ls -R gs://<bucket-name>

# We can delete all of this using
gsutil rm -R gs://<bucket-name>
