#!/usr/bin/env python
import json
import os
import subprocess

RENEW_CACHE_STR = "Rescan for games"
LAUNCH_STR = "Lutris"

FILELOCATION = os.path.expanduser("~/.launchablegames")


def json2list(j):
    lutrisgames = json.loads(j)
    lutris_games_list = [[item["name"], item["id"]] for item in lutrisgames]
    return lutris_games_list


def renew_cache():
    j = os.popen("lutris -ojl").read()

    with open(FILELOCATION, "w") as f:
        f.write(j)
    return json2list(j)


games_list = []
try:
    with open(FILELOCATION, "r") as f:
        games_list = json2list(f.read())

except:
    games_list = renew_cache()

has_selected_game = False

while not has_selected_game:
    formatted = "\n".join([*[game[0] for game in games_list], "", RENEW_CACHE_STR])

    res = subprocess.getoutput(
        'echo "' + formatted + f'" |  dmenu -i -l 15 -p {LAUNCH_STR}'
    )
    if res == RENEW_CACHE_STR:
        games_list = renew_cache()

    for game in games_list:
        if res == game[0]:
            subprocess.Popen(["lutris", "lutris:rungameid/" + str(game[1])])
            has_selected_game = True
            break
    if res == "":
        break

