# Presidio Analyzer – PII Detection Service
# Pulls the official Microsoft image from MCR.
# Port 3000 is exposed per the official Presidio configuration.

FROM mcr.microsoft.com/microsoft/presidio-analyzer:latest

EXPOSE 3000
