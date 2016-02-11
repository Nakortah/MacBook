#!bin/bash
((system_profiler SPHardwareDataType | grep -E "Model|Processor |Memory|Serial|UUID" &&  diskutil info disk0 | grep -E "Media Name| Total") | cut -d: -f2 | sed 's/^ *//g;s/ (.*$//g' | tr '\n' '|') >> MacBookInventory.txt
