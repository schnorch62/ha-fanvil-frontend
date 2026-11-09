# Fanvil Legacy Frontend for i507W — release 0.1.8

Concern is that Fanvil runs the long outdated Android 9.0.
The Fanvil Device ships with a firmware bundled and  outdated Android System WebView:
Package: com.android.webview
Version: 66.0.3359.158 (from April 2018)
Version code: 336015855
APK location: /system/app/webview/webview.apk
Target SDK: 28
Minimum SDK: 21

Unfortunately, Android stopped the support and updates for Version 9.0.

This Docker-App establishes the Home Assistant OS app and an isolated HTTP endpoint
without replacing any existing frontend. The `/` path is forwarded to the 
Home Assistant Core service from the proxy to (`homeassistant:443`). 
WebSocket upgrade forwarding is configured.

It is fully functional and uses an older HA-Frontend through  proxy setup for older browser
environments.

(c) 2026 Dietrich Wanke; dietrich.wanke@gmx.net
