#!bin/bash
(system_profiler SPHardwareDataType | grep -E "Model|Processor |Memory|Serial|UUID" &&  diskutil info disk0 | grep -E "Media Name| Total" && echo "****************************************")  >> MacBookInventory.txt
