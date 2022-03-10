## Part 1

Raid type chosen: Raid 5

Pros:
  - can handle one disk failure
  - parity information is distributed across disks
  - increased write speed
  - increased read speed because data is striped across disks
  - better redundancy

Cons:
  - if more than one disk fails, then data is lost
  - less secure than a Raid 6

Command to build: sudo mdadm --create --verbose /dev/md0 --level=5 --raid-devices=3 /dev/xvdb /dev/xvdf /dev/xvdg

## Part 2

command to check RAID status: cat /proc/mdstat
