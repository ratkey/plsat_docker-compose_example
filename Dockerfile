FROM postgres:18.4-bookworm

RUN apt-get update && apt-get install -y \
    postgresql-18-postgis-3 \
    postgresql-18-timescaledb \
    && rm -rf /var/lib/apt/lists/*

CMD ["postgres", "-c", "shared_preload_libraries=timescaledb"]
