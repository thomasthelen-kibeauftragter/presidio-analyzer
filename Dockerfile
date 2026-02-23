# Presidio Analyzer – PII Detection Service
# Custom build: Adds German language support (de_core_news_lg)
# Base image: mcr.microsoft.com/presidio-analyzer:latest

FROM mcr.microsoft.com/presidio-analyzer:latest

# Switch to root to install the German spaCy model
USER root

# Install the German spaCy NLP model
RUN pip install --no-cache-dir spacy && \
    python -m spacy download de_core_news_lg

# Copy our custom NLP config that adds German support
COPY nlp_conf.yaml /app/presidio_analyzer/conf/default.yaml

# Back to non-root user (presidio)
USER 1001

EXPOSE 3000
