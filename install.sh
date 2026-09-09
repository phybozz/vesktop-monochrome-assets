#!/bin/bash
if [ -d "$HOME/.config/vesktop" ]; then
    AD="$HOME/.config/vesktop/userAssets"
elif [ -d "$HOME/.var/app/dev.vencord.Vesktop/config/vesktop" ]; then
    AD="$HOME/.var/app/dev.vencord.Vesktop/config/vesktop/userAssets"
else
    echo "Open an issue in the GitHub repository, thanks! :("
    exit 1
fi
mkdir -p "$AD"
curl -f# "https://raw.githubusercontent.com/phybozz/vesktop-monochrome-assets/refs/heads/main/assets/splash.webp" -o "$AD/splash.webp" \
&& echo "Installed splash.webp successfully."
curl -f# "https://raw.githubusercontent.com/phybozz/vesktop-monochrome-assets/refs/heads/main/assets/tray.png" -o "$AD/tray.png" \
&& echo "Installed tray.png successfully."
curl -f# "https://raw.githubusercontent.com/phybozz/vesktop-monochrome-assets/refs/heads/main/assets/trayUnread.png" -o "$AD/trayUnread.png" \
&& echo "Installed trayUnread.png successfully."
echo "
Done! :D"