# Troubleshooting Runbook

## Scenario

A user says they cannot access the public portfolio site.

## Triage Questions

| Question | Why It Matters |
| --- | --- |
| Is the issue affecting one user or many users? | Separates local device issues from service-wide issues |
| What URL is the user trying to access? | Confirms the target and avoids typo-based troubleshooting |
| What error message appears? | Distinguishes DNS, certificate, network, and application errors |
| Can the user access other websites? | Checks whether the user's network is generally working |
| Did anything change recently? | Helps identify deployment, DNS, or permission changes |

## Diagnostic Steps

1. Confirm the correct URL.
2. Test DNS resolution.
3. Test TCP connectivity to port 443.
4. Send an HTTPS request and record the status code.
5. Check whether the problem appears in another browser or network.
6. Review recent repository or deployment changes.
7. Document findings and escalate if the hosting platform appears unavailable.

## PowerShell Commands

```powershell
Resolve-DnsName rd4028.github.io
Test-NetConnection rd4028.github.io -Port 443
Invoke-WebRequest https://rd4028.github.io/visualization-studio-portfolio/ -Method Head
```

## Common Findings

| Symptom | Possible Cause | Next Action |
| --- | --- | --- |
| DNS name does not resolve | DNS outage, incorrect domain, local DNS cache | Test another DNS resolver or flush DNS cache |
| TCP 443 fails | Network block, firewall, service issue | Test another network and check service status |
| HTTPS certificate warning | Certificate or hostname mismatch | Verify domain and certificate configuration |
| 404 response | Wrong path or missing published file | Check repository path and deployment output |
| 403 response | Permission issue | Review static hosting access rules |

## Escalation Notes

Escalate when:

- Multiple users are affected.
- DNS records appear incorrect.
- HTTPS certificate errors appear.
- The hosting platform reports an incident.
- A recent deployment changed site paths, permissions, or files.

## Documentation Standard

Record:

- Time and date
- URL tested
- Commands run
- Results observed
- Likely cause
- Action taken or escalation path
