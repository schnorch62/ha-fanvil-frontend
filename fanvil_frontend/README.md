# Fanvil Legacy Frontend — staging release 0.1.0

This stage establishes the Home Assistant OS app and an isolated HTTP endpoint
without replacing any existing frontend. The `/` path displays a diagnostic
staging page; other paths are forwarded to the Home Assistant Core service
(`homeassistant:443`). WebSocket upgrade forwarding is configured.


It is fully functional and uses an older HA-Frontend through a proxy setup for older browsers.

(c) 2026 Dietrich Wanke; dietrich.wanke@gmx.net
