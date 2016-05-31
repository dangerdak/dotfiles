# coding: utf-8

from i3pystatus import Status

status = Status(standalone=True)

# Define colors
color_standard = "#b27f82"
color_attention = "#e7d844"
color_semi_urgent = "#fb6622"
color_urgent = "#fb2222"

# Clock
status.register("clock",
                format="%a %d %b %H:%M:%S",
                )

# Battery
status.register("battery",
                format="{status} {percentage:.0f}% {remaining:%E%hh:%Mm}",
                color=color_standard,
                full_color=color_standard,
                critical_color=color_urgent,
                status={
                        "DIS": "▼",
                        "CHR": "▲",
                        "FULL": "▶",
                        },
                )

# Network. Show the address and up/down state of interface.
# If up, address is green (color_up), and the CIDR-address is shown
# If down, just interface name is shown, in red (format_down, color_down)
status.register("network",
                interface="enp7s0",
                format_up="{interface}: {v4}",
                color_up=color_standard,
                format_down="",
                )

# Wireless network
## Requires both netifaces-py3 and basiciw
status.register("network",
                interface="wlp3s0",
                format_up="{essid}" "{quality: >4.0f}%",
                color_up=color_standard,
                format_down="{interface} down",
                color_down=color_attention,
                )

# Shows disk use of directory at path
status.register("disk",
                path="/",
                format="{avail:.0f}G",
                color=color_standard,
                critical_limit=3,
                critical_color=color_attention,
                )

# Volume info
status.register("alsa",
                format="Vol: {volume}%",
                color=color_standard,
                color_muted=color_attention,
                )
	
status.run()
