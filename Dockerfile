# Presidio Analyzer – PII Detection Service
# Custom build: Adds German language support (de_core_news_lg + German recognizers)

FROM mcr.microsoft.com/presidio-analyzer:latest

USER root

# Install the German spaCy NLP model
RUN pip install --no-cache-dir spacy && \
    python -m spacy download de_core_news_lg

# Copy our custom NLP config (English + German spaCy models)
COPY nlp_conf.yaml /app/presidio_analyzer/conf/default.yaml

# Copy our custom recognizer config (adds German to Email, Phone, IBAN, Date etc.)
COPY recognizers_de.yaml /app/presidio_analyzer/conf/default_recognizers.yaml

USER 1001

EXPOSE 3000
