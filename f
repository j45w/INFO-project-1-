# To capture live network packets
import pyshark

# Start live capture on interface eth0
capture = pyshark.LiveCapture(interface='eth0')

# Capture packets for 50 seconds
capture.sniff(timeout=50)

# To analyze the packets by printing the details of each packet
for packet in capture:
    try:
        print(f"Packet: {packet}")
    except AttributeError:
        pass
