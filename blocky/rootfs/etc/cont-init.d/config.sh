#!/usr/bin/with-contenv bashio
# ==============================================================================
# Blocky config
# ==============================================================================

CONFIG="/etc/blocky.yaml"

bashio::log.info "Configuring Blocky..."

tempio \
    -conf /data/options.json \
    -template /usr/share/tempio/blocky.gtpl \
    -out "${CONFIG}"

bashio::log.info "Generated Blocky configuration:"
bashio::log.info "================================"
cat "${CONFIG}"
bashio::log.info "================================"