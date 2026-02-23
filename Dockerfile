# Presidio Analyzer – PII Detection Service
# Custom build: English + German (de_core_news_lg)

FROM mcr.microsoft.com/presidio-analyzer:latest

USER root

# Install the German spaCy NLP model
RUN pip install --no-cache-dir spacy && \
    python -m spacy download de_core_news_lg

# Copy custom configs:
# 1. NLP config (English + German spaCy models)
COPY nlp_conf.yaml /app/presidio_analyzer/conf/default.yaml
# 2. Analyzer engine config (supported_languages: en + de)
COPY analyzer_conf.yaml /app/presidio_analyzer/conf/default_analyzer.yaml
# 3. Recognizer registry (Email, Phone, IBAN etc. for de + en)
COPY recognizers_de.yaml /app/presidio_analyzer/conf/default_recognizers.yaml

USER 1001

EXPOSE 3000
