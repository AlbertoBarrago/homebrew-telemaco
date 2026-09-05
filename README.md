# homebrew-telemaco

Homebrew tap for [telemaco](https://github.com/AlbertoBarrago/telemaco), a headless browser engine in Rust, a drop-in replacement for headless Chrome with Puppeteer and Playwright.

## Install

```sh
brew tap albertobarrago/telemaco
brew install telemaco
```

The default formula installs the render-enabled binary (full DOM, layout, screenshots, PDF).

## Stealth build

The stealth variant adds anti-fingerprinting (wreq/BoringSSL transport, fingerprint protections, tracker blocklist). Install it with:

```sh
brew install telemaco-stealth
```

## Usage

```sh
telemaco fetch https://example.com --dump text
telemaco --proxy http://USER:PASS@gate.nodemaven.com:8080 fetch https://example.com --dump text
```

## How it works

The formulas download the precompiled binaries from the [telemaco GitHub Releases](https://github.com/AlbertoBarrago/telemaco/releases). Telemaco compiles V8 from source, so a brew formula that builds from source would take minutes and gigabytes; the release workflow publishes ready-to-run tarballs instead.

The `update-formula` workflow refreshes the SHA-256 checksums whenever a new release is published.
