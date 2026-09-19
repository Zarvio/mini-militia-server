FROM ubuntu:24.04

RUN apt-get update && apt-get install -y \
    libfontconfig1 \
    libx11-6 \
    libxcursor1 \
    libxi6 \
    libxinerama1 \
    libxrandr2 \
    libasound2t64 \
    libpulse0 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /server

COPY server_build/ /server/

RUN chmod +x /server/MiniMilitiaServer.x86_64

CMD ["/server/MiniMilitiaServer.x86_64"]