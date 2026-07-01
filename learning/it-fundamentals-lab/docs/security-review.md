# Security Review

## Objective

Review the static website as if it were being prepared for public release by a small organisation.

## Public Exposure Checklist

| Check | Status | Notes |
| --- | --- | --- |
| No passwords or API keys in repository | Pass | `.gitignore` excludes common secret files |
| No customer, workplace, or private student data | Pass | Project uses portfolio-safe content only |
| Public files are intentionally public | Pass | Only static website and documentation files are included |
| Full group assignment report excluded | Pass | Protects other students' identifying details |
| Tableau data sharing reviewed | Pass | Data approved for public sharing by the project owner |

## Access Control Concepts

For a static website, the main access question is not user login. It is whether public users can access only the files that should be public.

Controls to review:

- Repository visibility
- Branch protection, if collaborating
- Secrets stored outside the repository
- Static hosting configuration
- Public file paths and downloadable artifacts

## AWS S3 Security Considerations

If this lab is deployed to AWS S3 later, the following controls should be reviewed:

- Use a dedicated bucket for the static site.
- Do not store credentials or private files in the bucket.
- Keep bucket write access restricted.
- Grant public read access only when required for website objects.
- Use least privilege for IAM users and roles.
- Enable MFA on the AWS account.
- Review Block Public Access settings before publishing.
- Use CloudFront and HTTPS for stronger production-style delivery.

## OWASP Link

This lab connects to OWASP-style thinking even though it is not a complex web application:

- Security misconfiguration: public hosting settings must be reviewed.
- Identification and authentication failures: administrative accounts must use strong authentication.
- Cryptographic failures: public access should use HTTPS.
- Sensitive data exposure: private data must not be committed or published.

## Reflection

The most important security lesson is that public does not mean uncontrolled. A public website should expose only the intended content, while credentials, private data, and administrative access remain protected.

