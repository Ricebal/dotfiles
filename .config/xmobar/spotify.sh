
spotifyid=$(ps -ef | grep -e '[/]usr/share/spotify' -e '[/]opt/spotify' | awk '{print $2}' | head -1)
if [ "$spotifyid" != "" ]; then
    artist=$(playerctl metadata artist)
    song=$(playerctl metadata title | cut -c 1-60)
    echo -n "$artist · $song"
fi