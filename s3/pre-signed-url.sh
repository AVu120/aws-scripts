# Generate a pre-signed url of an s3 object (always include the region argument).
aws s3 presign s3://mybucket/myobject --region my-region

# Optionally add a custom expiration time (default is 3600s or 1hr)
aws s3 presign s3://mybucket/myobject --region my-region --expires-in 300

# IF YOU ARE GETTING ISSUES

# Set the proper signature version in order to not get issues when generating URLs for encrypted files.
aws configure set default.s3.signature_version s3v4