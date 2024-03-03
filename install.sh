curl --socks5 127.0.0.1:9050 -fsSL https://pkgs.tailscale.com/stable/debian/bookworm.noarmor.gpg | sudo tee /usr/share/keyrings/tailscale-archive-keyring.gpg >/dev/null
curl --socks5 127.0.0.1:9050 -fsSL https://pkgs.tailscale.com/stable/debian/bookworm.tailscale-keyring.list | sudo tee /etc/apt/sources.list.d/tailscale.list
nano /etc/apt/sources.list.d/tailscale.list
    deb [signed-by=/usr/share/keyrings/tailscale-archive-keyring.gpg] tor://pkgs.tailscale.com/stable/debian bookworm main
apt update
apt install tailscale
