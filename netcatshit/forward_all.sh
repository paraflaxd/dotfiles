trap 'kill $(jobs -p)' EXIT

socat TCP-LISTEN:8000,fork,reuseaddr TCP:192.168.1.162:8000 &
socat TCP-LISTEN:8001,fork,reuseaddr TCP:192.168.1.162:8001 &
socat TCP-LISTEN:5000,fork,reuseaddr TCP:192.168.1.162:5000 &
socat TCP-LISTEN:7194,fork,reuseaddr TCP:192.168.1.162:7194 &
socat TCP-LISTEN:5139,fork,reuseaddr TCP:192.168.1.162:5139 &
socat TCP-LISTEN:4200,fork,reuseaddr TCP:192.168.1.162:4200 &
socat TCP-LISTEN:7169,fork,reuseaddr TCP:192.168.1.162:7169 &

wait
