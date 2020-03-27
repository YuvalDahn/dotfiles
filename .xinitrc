#!/bin/sh
for f in $LOG_FOLDER/*.log; do
	cp $f $f.old
done
echo -e "Starting i3 at $(date  --rfc-3339=seconds)\n---------------------------\n" | tee $LOG_FOLDER/*.log > /dev/null
exec /usr/bin/i3 >> $LOG_I3 2>&1
