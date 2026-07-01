# Architecture Notes

## Purpose

This lab models a simple public static website and documents the IT fundamentals needed to support it. The system is intentionally small so the focus stays on operational understanding: how users connect, what can fail, and what controls should be checked before publishing.

## Request Flow

1. A user enters the site URL in a browser.
2. DNS resolves the domain name to the hosting platform.
3. The browser opens an HTTPS connection over TCP port 443.
4. The static host returns HTML, CSS, and JavaScript files.
5. The browser renders the page.

## Key Components

| Component | Role | Support Considerations |
| --- | --- | --- |
| Browser | Sends the request and renders the page | Cache, DNS cache, browser security warnings |
| DNS | Connects a readable name to the hosting target | Incorrect records can stop users reaching the site |
| HTTPS | Protects the connection between user and site | Certificate errors can cause trust warnings |
| Static host | Serves website files | Permissions must expose only intended public files |
| Repository | Stores source files and documentation | Avoid committing secrets or private information |

## Deployment Model

The current project is designed for GitHub Pages or a similar static hosting platform.

An AWS S3 extension would use:

- S3 bucket for static files
- Block Public Access review before enabling website access
- Bucket policy allowing public read access only to intended website objects
- CloudFront and HTTPS for a production-quality setup
- Route 53 or another DNS provider for custom domain routing

## System Boundaries

In scope:

- Static website files
- Public repository documentation
- Endpoint availability testing
- Basic security review

Out of scope:

- User accounts
- Backend databases
- Payment or sensitive customer data
- Production monitoring platform

## Why This Matters

Even simple public websites need clear operational thinking. A support analyst should understand where the system is hosted, how users reach it, which controls protect it, and how to collect evidence when something goes wrong.

