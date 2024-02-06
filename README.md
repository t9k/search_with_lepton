<div align="center">
<h1 align="center">Search with Lepton</h1>
Build your own conversational search engine using less than 500 lines of code.
<br/>
<a href="https://search.lepton.run/" target="_blank"> Live Demo </a>
<br/>
<img width="70%" src="https://github.com/leptonai/search_with_lepton/assets/1506722/845d7057-02cd-404e-bbc7-60f4bae89680">
</div>

## Features

- Built-in support for LLM
- Built-in support for search engine
- Customizable pretty UI interface
- Shareable, cached search results

## Setup Search Engine API

There are two default supported search engines: Bing and Google.
 
### Bing Search

To use the Bing Web Search API, please visit [this link](https://www.microsoft.com/en-us/bing/apis/bing-web-search-api) to obtain your Bing subscription key.

### Google Search

You have three options for Google Search: you can use the [SearchApi Google Search API](https://www.searchapi.io/) from SearchApi, [Serper Google Search API](https://www.serper.dev) from Serper, or opt for the [Programmable Search Engine](https://developers.google.com/custom-search) provided by Google.

## Setup LLM and KV

The original repo uses Lepton AI cloud service's LLM and key-value storage services. Here, a locally deployed service compatible with the OpenAI API is used, temporarily not using the key-value storage service (TODO, hence there is no functionality for caching queries and results yet).

## Build

1. Set Bing subscription key

```shell
export BING_SEARCH_V7_SUBSCRIPTION_KEY=YOUR_BING_SUBSCRIPTION_KEY
```

2. Build web

```shell
cd web && npm install && npm run build
```

3. Run server

```shell
BACKEND=BING python search_with_lepton.py
```

For Google Search using SearchApi:

```shell
export SEARCHAPI_API_KEY=YOUR_SEARCHAPI_API_KEY
BACKEND=SEARCHAPI python search_with_lepton.py
```

For Google Search using Serper:

```shell
export SERPER_SEARCH_API_KEY=YOUR_SERPER_API_KEY
BACKEND=SERPER python search_with_lepton.py
```

For Google Search using Programmable Search Engine:

```shell
export GOOGLE_SEARCH_API_KEY=YOUR_GOOGLE_SEARCH_API_KEY
export GOOGLE_SEARCH_CX=YOUR_GOOGLE_SEARCH_ENGINE_ID
BACKEND=GOOGLE python search_with_lepton.py
```
