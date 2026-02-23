# Presidio Analyzer – PII Detection Service
# Pulls the official Microsoft image from MCR.
# Correct path: mcr.microsoft.com/presidio-analyzer (without microsoft/ prefix)
# Latest stable: 2.2.361

FROM mcr.microsoft.com/presidio-analyzer:latest

EXPOSE 3000
