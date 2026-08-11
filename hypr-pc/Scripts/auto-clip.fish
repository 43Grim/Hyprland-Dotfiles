#!/usr/bin/env fish

set GAMES_REGEX "sober|java"
set BUFFER_SECONDS 30
set OUTPUT_DIR "$HOME/Videos/Clips"
set GSR_PID ""

mkdir -p "$OUTPUT_DIR"
pkill -15 -f "[g]pu-screen-recorder" 2>/dev/null

while true
    if pgrep -f "$GAMES_REGEX" > /dev/null
        if test -z "$GSR_PID"
            gpu-screen-recorder -w screen -f 60 -a default_output -r "$BUFFER_SECONDS" -c mp4 -o "$OUTPUT_DIR" &
            set GSR_PID $last_pid
            notify-send "Clipping Enabled" "Replay buffer started."
        else if not kill -0 $GSR_PID 2>/dev/null
            gpu-screen-recorder -w screen -f 60 -a default_output -r "$BUFFER_SECONDS" -c mp4 -o "$OUTPUT_DIR" &
            set GSR_PID $last_pid
            notify-send "Clipping Enabled" "Replay buffer started."
        end


    else
        if test -n "$GSR_PID"
            kill -15 $GSR_PID 2>/dev/null
            set GSR_PID ""
            notify-send "Clipping Disabled" "Replay buffer stopped."
        end
    end

    sleep 5
end
