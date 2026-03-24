if command -v rclone &>/dev/null; then
	export RCLONE_STATS=10s
	export RCLONE_CHECKERS=16
	export RCLONE_STATS_FILE_NAME_LENGTH=0
	export RCLONE_LOG_FILE=/tmp/rclone.log
fi
