## Google Cloud Storage (GCS) Bucket

Google Cloud Storage (GCS) provides secure and highly durable object storage. It offers a range of storage classes, including Standard, Nearline, Coldline, and Archive, ensuring cost efficiency for data with different storage durations and availability requirements.

### Design Decisions

This guide covers the design choices made for managing Google Cloud Storage (GCS) buckets in a structured and efficient manner:

- **Uniform Bucket Level Access:** This setting is enabled to improve security by enforcing uniform access at the bucket level, rather than at the object level.
- **IAM Permissions with Conditions:** IAM roles for read and read/write access are implemented with specific conditions to ensure fine-grained access control.
- **Region Specification:** Buckets are created in specific regions as defined, ensuring compliance with data residency requirements.
- **Force Destroy:** Enabling `force_destroy` allows bucket deletion even if it contains objects, aiding in automated cleanup processes.

### Runbook

#### Bucket Not Accessible

If the bucket becomes inaccessible, ensure that your IAM roles and conditions are correctly set up.

Check current IAM permissions:

```sh
gcloud projects get-iam-policy YOUR_PROJECT_ID
```

Verify that the response includes roles for `storage.objectViewer` or `storage.objectUser` for the designated users/groups.

#### Objects Not Readable

If specific objects are not readable, ensure that Uniform Bucket Level Access is enforced and IAM roles are applied correctly.

List bucket policies:

```sh
gsutil iam get gs://YOUR_BUCKET_NAME
```

Ensure that appropriate bindings for `roles/storage.objectViewer` or `roles/storage.objectUser` exist.

#### Bucket Deletion Fails

If a bucket cannot be deleted due to remaining objects, use the `force_destroy` option and verify its status.

Force delete the bucket and its contents:

```sh
gsutil -m rm -r gs://YOUR_BUCKET_NAME
```

Ensure that all objects are successfully deleted.

#### Check Bucket Status and Metadata

If there are inconsistencies or issues with bucket metadata, audit the bucket status and attributes.

Retrieve bucket information:

```sh
gsutil ls -L -b gs://YOUR_BUCKET_NAME
```

This command outputs the bucket's metadata, status, and IAM policies. Verify that details match your configurations, especially labels and location constraints.

Check bucket location:

```sh
gsutil ls -L -b gs://YOUR_BUCKET_NAME | grep "Location constraint"
```

Ensure the bucket is in the correct region as specified by your configuration.

