[![Massdriver][logo]][website]

# gcp-gcs-bucket-application-assets

[![Release][release_shield]][release_url]
[![Contributors][contributors_shield]][contributors_url]
[![Forks][forks_shield]][forks_url]
[![Stargazers][stars_shield]][stars_url]
[![Issues][issues_shield]][issues_url]
[![MIT License][license_shield]][license_url]


Google Cloud Storage (GCS)  is designed for optimal performance with unstructured data. This storage solution is ideal for storing any files produced and consumed by your application internally on the Google Cloud Platform.


---

## Design

For detailed information, check out our [Operator Guide](operator.mdx) for this bundle.

## Usage

Our bundles aren't intended to be used locally, outside of testing. Instead, our bundles are designed to be configured, connected, deployed and monitored in the [Massdriver][website] platform.

### What are Bundles?

Bundles are the basic building blocks of infrastructure, applications, and architectures in [Massdriver][website]. Read more [here](https://docs.massdriver.cloud/concepts/bundles).

## Bundle

### Params

Form input parameters for configuring a bundle for deployment.

<details>
<summary>View</summary>

<!-- PARAMS:START -->
## Properties

- **`bucket`** *(object)*
  - **`force_destroy`** *(boolean)*: When enabled, the bucket and all objects within it are destroyed when the bundle is decommissioned. Default: `False`.
  - **`region`** *(string)*: GCP region where the bucket will be created.

    Examples:
    ```json
    "us-east1"
    ```

    ```json
    "us-east4"
    ```

    ```json
    "us-west1"
    ```

    ```json
    "us-west2"
    ```

    ```json
    "us-west3"
    ```

    ```json
    "us-west4"
    ```

    ```json
    "us-central1"
    ```

## Examples

<!-- PARAMS:END -->

</details>

### Connections

Connections from other bundles that this bundle depends on.

<details>
<summary>View</summary>

<!-- CONNECTIONS:START -->
## Properties

- **`gcp_authentication`** *(object)*: GCP Service Account. Cannot contain additional properties.
  - **`data`** *(object)*
    - **`auth_provider_x509_cert_url`** *(string)*: Auth Provider x509 Certificate URL. Default: `https://www.googleapis.com/oauth2/v1/certs`.

      Examples:
      ```json
      "https://example.com/some/path"
      ```

      ```json
      "https://massdriver.cloud"
      ```

    - **`auth_uri`** *(string)*: Auth URI. Default: `https://accounts.google.com/o/oauth2/auth`.

      Examples:
      ```json
      "https://example.com/some/path"
      ```

      ```json
      "https://massdriver.cloud"
      ```

    - **`client_email`** *(string)*: Service Account Email.

      Examples:
      ```json
      "jimmy@massdriver.cloud"
      ```

      ```json
      "service-account-y@gmail.com"
      ```

    - **`client_id`** *(string)*: .
    - **`client_x509_cert_url`** *(string)*: Client x509 Certificate URL.

      Examples:
      ```json
      "https://example.com/some/path"
      ```

      ```json
      "https://massdriver.cloud"
      ```

    - **`private_key`** *(string)*: .
    - **`private_key_id`** *(string)*: .
    - **`project_id`** *(string)*: .
    - **`token_uri`** *(string)*: Token URI. Default: `https://oauth2.googleapis.com/token`.

      Examples:
      ```json
      "https://example.com/some/path"
      ```

      ```json
      "https://massdriver.cloud"
      ```

    - **`type`** *(string)*: . Default: `service_account`.
  - **`specs`** *(object)*
    - **`gcp`** *(object)*: .
      - **`project`** *(string)*
      - **`region`** *(string)*: The GCP region to provision resources in.

        Examples:
        ```json
        "us-east1"
        ```

        ```json
        "us-east4"
        ```

        ```json
        "us-west1"
        ```

        ```json
        "us-west2"
        ```

        ```json
        "us-west3"
        ```

        ```json
        "us-west4"
        ```

        ```json
        "us-central1"
        ```

<!-- CONNECTIONS:END -->

</details>

### Artifacts

Resources created by this bundle that can be connected to other bundles.

<details>
<summary>View</summary>

<!-- ARTIFACTS:START -->
## Properties

- **`gcs_bucket`** *(object)*: GCP Google Cloud Storage Bucket.
  - **`data`** *(object)*
    - **`infrastructure`** *(object)*: Google Cloud Storage Bucket. Cannot contain additional properties.
      - **`id`** *(string)*: The Globally Unique ID of the GCS Bucket.

        Examples:
        ```json
        "one"
        ```

        ```json
        "dash-bucket"
        ```

        ```json
        "snake_bucket"
        ```

        ```json
        "domain.type.bucket"
        ```

        ```json
        "1also-valid2"
        ```

    - **`security`** *(object)*: GCP Security Configuration. Cannot contain additional properties.
      - **`iam`** *(object)*: IAM Roles And Conditions. Cannot contain additional properties.
        - **`^[a-z]+[a-z_]*[a-z]$`** *(object)*
          - **`condition`** *(string)*: GCP IAM Condition.
          - **`role`**: GCP Role.

            Examples:
            ```json
            "roles/owner"
            ```

            ```json
            "roles/redis.editor"
            ```

            ```json
            "roles/storage.objectCreator"
            ```

            ```json
            "roles/storage.legacyObjectReader"
            ```

  - **`specs`** *(object)*
    - **`gcp`** *(object)*: .
      - **`project`** *(string)*
      - **`region`** *(string)*: The GCP region to provision resources in.

        Examples:
        ```json
        "us-east1"
        ```

        ```json
        "us-east4"
        ```

        ```json
        "us-west1"
        ```

        ```json
        "us-west2"
        ```

        ```json
        "us-west3"
        ```

        ```json
        "us-west4"
        ```

        ```json
        "us-central1"
        ```

<!-- ARTIFACTS:END -->

</details>

## Contributing

<!-- CONTRIBUTING:START -->

### Bug Reports & Feature Requests

Did we miss something? Please [submit an issue](https://github.com/massdriver-cloud/gcp-gcs-bucket-application-assets/issues) to report any bugs or request additional features.

### Developing

**Note**: Massdriver bundles are intended to be tightly use-case scoped, intention-based, reusable pieces of IaC for use in the [Massdriver][website] platform. For this reason, major feature additions that broaden the scope of an existing bundle are likely to be rejected by the community.

Still want to get involved? First check out our [contribution guidelines](https://docs.massdriver.cloud/bundles/contributing).

### Fix or Fork

If your use-case isn't covered by this bundle, you can still get involved! Massdriver is designed to be an extensible platform. Fork this bundle, or [create your own bundle from scratch](https://docs.massdriver.cloud/bundles/development)!

<!-- CONTRIBUTING:END -->

## Connect

<!-- CONNECT:START -->

Questions? Concerns? Adulations? We'd love to hear from you!

Please connect with us!

[![Email][email_shield]][email_url]
[![GitHub][github_shield]][github_url]
[![LinkedIn][linkedin_shield]][linkedin_url]
[![Twitter][twitter_shield]][twitter_url]
[![YouTube][youtube_shield]][youtube_url]
[![Reddit][reddit_shield]][reddit_url]

<!-- markdownlint-disable -->

[logo]: https://raw.githubusercontent.com/massdriver-cloud/docs/main/static/img/logo-with-logotype-horizontal-400x110.svg
[docs]: https://docs.massdriver.cloud/?utm_source=github&utm_medium=readme&utm_campaign=gcp-gcs-bucket-application-assets&utm_content=docs
[website]: https://www.massdriver.cloud/?utm_source=github&utm_medium=readme&utm_campaign=gcp-gcs-bucket-application-assets&utm_content=website
[github]: https://github.com/massdriver-cloud?utm_source=github&utm_medium=readme&utm_campaign=gcp-gcs-bucket-application-assets&utm_content=github
[slack]: https://massdriverworkspace.slack.com/?utm_source=github&utm_medium=readme&utm_campaign=gcp-gcs-bucket-application-assets&utm_content=slack
[linkedin]: https://www.linkedin.com/company/massdriver/?utm_source=github&utm_medium=readme&utm_campaign=gcp-gcs-bucket-application-assets&utm_content=linkedin



[contributors_shield]: https://img.shields.io/github/contributors/massdriver-cloud/gcp-gcs-bucket-application-assets.svg?style=for-the-badge
[contributors_url]: https://github.com/massdriver-cloud/gcp-gcs-bucket-application-assets/graphs/contributors
[forks_shield]: https://img.shields.io/github/forks/massdriver-cloud/gcp-gcs-bucket-application-assets.svg?style=for-the-badge
[forks_url]: https://github.com/massdriver-cloud/gcp-gcs-bucket-application-assets/network/members
[stars_shield]: https://img.shields.io/github/stars/massdriver-cloud/gcp-gcs-bucket-application-assets.svg?style=for-the-badge
[stars_url]: https://github.com/massdriver-cloud/gcp-gcs-bucket-application-assets/stargazers
[issues_shield]: https://img.shields.io/github/issues/massdriver-cloud/gcp-gcs-bucket-application-assets.svg?style=for-the-badge
[issues_url]: https://github.com/massdriver-cloud/gcp-gcs-bucket-application-assets/issues
[release_url]: https://github.com/massdriver-cloud/gcp-gcs-bucket-application-assets/releases/latest
[release_shield]: https://img.shields.io/github/release/massdriver-cloud/gcp-gcs-bucket-application-assets.svg?style=for-the-badge
[license_shield]: https://img.shields.io/github/license/massdriver-cloud/gcp-gcs-bucket-application-assets.svg?style=for-the-badge
[license_url]: https://github.com/massdriver-cloud/gcp-gcs-bucket-application-assets/blob/main/LICENSE


[email_url]: mailto:support@massdriver.cloud
[email_shield]: https://img.shields.io/badge/email-Massdriver-black.svg?style=for-the-badge&logo=mail.ru&color=000000
[github_url]: mailto:support@massdriver.cloud
[github_shield]: https://img.shields.io/badge/follow-Github-black.svg?style=for-the-badge&logo=github&color=181717
[linkedin_url]: https://linkedin.com/in/massdriver-cloud
[linkedin_shield]: https://img.shields.io/badge/follow-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&color=0A66C2
[twitter_url]: https://twitter.com/massdriver?utm_source=github&utm_medium=readme&utm_campaign=gcp-gcs-bucket-application-assets&utm_content=twitter
[twitter_shield]: https://img.shields.io/badge/follow-Twitter-black.svg?style=for-the-badge&logo=twitter&color=1DA1F2
[discourse_url]: https://community.massdriver.cloud?utm_source=github&utm_medium=readme&utm_campaign=gcp-gcs-bucket-application-assets&utm_content=discourse
[discourse_shield]: https://img.shields.io/badge/join-Discourse-black.svg?style=for-the-badge&logo=discourse&color=000000
[youtube_url]: https://www.youtube.com/channel/UCfj8P7MJcdlem2DJpvymtaQ
[youtube_shield]: https://img.shields.io/badge/subscribe-Youtube-black.svg?style=for-the-badge&logo=youtube&color=FF0000
[reddit_url]: https://www.reddit.com/r/massdriver
[reddit_shield]: https://img.shields.io/badge/subscribe-Reddit-black.svg?style=for-the-badge&logo=reddit&color=FF4500

<!-- markdownlint-restore -->

<!-- CONNECT:END -->
