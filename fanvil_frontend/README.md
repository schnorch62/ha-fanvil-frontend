# Fanvil Legacy Frontend — staging release 0.1.0

This stage establishes the Home Assistant OS app and an isolated HTTP endpoint
without replacing any existing frontend. The `/` path displays a diagnostic
staging page; other paths are forwarded to the Home Assistant Core service
(`homeassistant:8123`). WebSocket upgrade forwarding is configured.

**Do not use this as a Home Assistant dashboard yet.** Authentication, proxy
trust, session cookies, old frontend asset compatibility, and HTTPS have not
been validated. The `homeassistant` hostname must be tested from inside the
app container. The initial version intentionally does not configure trusted
proxies in Core or change its `configuration.yaml`.

## Intended next phase

1. Verify a specific official pre-2026.11 frontend package and checksum.
2. Extract the matching HTML and static asset bundles, preserving URL paths.
3. Make the app serve those assets while forwarding API/auth/WebSocket routes.
4. Test a fresh login, API calls, WebSocket events and Chromium 66 compatibility.
5. Configure a separate HTTPS hostname only after these tests.

## Installation

Upload the repository files to the GitHub repository, retaining the directory
layout. Add the GitHub repository to Home Assistant's app store and refresh it.
Install **Fanvil Legacy Frontend (staging)**, but keep its boot mode manual.
Start it only when ready to test, then visit `http://HAOS-IP:8124/`.

The staging page is expected. Do not point the Fanvil at this app yet.

The app's `/data` directory is persistent across app rebuilds and is reserved
for future pinned frontend files.
