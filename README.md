# Fanvil legacy frontend

Experimental Home Assistant OS app repository for the Fanvil i507W (Android 9 / Chromium 66).

This is a working legacy frontend. It does not modify Home Assistant Core or install an 
unverified frontend release.

The app starts an Nginx server on port 8124 and forwards API/auth/WebSocket requests
to Home Assistant Core. It deliberately displays a staging page until the legacy
frontend bundle and its asset paths have been verified.

See `fanvil_frontend/README.md` for testing and limitations.
