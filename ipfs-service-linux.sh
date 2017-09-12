echo "[Unit]
Description=IPFS daemon

[Service]
ExecStart=/usr/bin/ipfs daemon
Restart=on-failure

[Install]
WantedBy=default.target" > ~/.config/systemd/user/ipfs.service

