#!/bin/sh
cd /app/ui
gunicorn ui:app -b 0.0.0.0
