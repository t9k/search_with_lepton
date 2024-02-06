FROM nikolaik/python-nodejs:python3.10-nodejs21-slim

RUN apt-get update && \
    apt-get install -yq --no-install-recommends git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir \
    openai==1.11.1 \
    fastapi==0.109.2 \
    requests==2.31.0 \
    loguru==0.7.2 \
    contextlib2==21.6.0 \
    rich==13.7.0 \
    cloudpickle==2.2.1 \
    prometheus-fastapi-instrumentator==6.1.0 \
    uvicorn==0.27.0.post1 \
    pillow==10.2.0 \
    pyyaml==6.0.1 \
    huggingface_hub==0.20.3 && \
    pip install --no-cache-dir --no-dependencies \
    leptonai==0.16.0

WORKDIR /workspace
RUN git clone https://github.com/t9k/search_with_lepton.git && \
    cd search_with_lepton/web && npm install && npm run build

EXPOSE 8080
WORKDIR /workspace/search_with_lepton
ENTRYPOINT ["python", "search_with_lepton.py"]
