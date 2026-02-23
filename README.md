# Presidio Analyzer

Dieses Repository ist ein schlanker Deployment-Wrapper für den [Microsoft Presidio Analyzer](https://github.com/microsoft/presidio).

## Was ist Presidio Analyzer?

Ein REST-Service zur Erkennung von **personenbezogenen Daten (PII)** in Texten – z.B. Namen, E-Mail-Adressen, Telefonnummern, IBAN etc.

## Deployment

Deployed via Sliplane auf dem **ThePod KI Beauftragter Server** (Nürnberg) als interner Service.

## REST API

### Health Check
```
GET /health
```

### PII Analyse
```
POST /analyze
Content-Type: application/json

{
  "text": "Mein Name ist Max Mustermann und meine E-Mail ist max@example.com",
  "language": "de"
}
```

## Integration

Der Service ist intern erreichbar und kann von **n8n** via HTTP-Request-Node angesprochen werden.
