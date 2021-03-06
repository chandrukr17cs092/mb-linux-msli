#!/bin/sh

TEST_PURPOSE=goal
TEST_TYPE=umlXhost

TESTNAME=nat-transport-02

XHOST_LIST="NIC NORTH EAST"

REF_CONSOLE_FIXUPS="kern-list-fixups.sed nocr.sed"
REF_CONSOLE_FIXUPS="$REF_CONSOLE_FIXUPS east-prompt-splitline.pl"
REF_CONSOLE_FIXUPS="$REF_CONSOLE_FIXUPS cutout.sed"
REF_CONSOLE_FIXUPS="$REF_CONSOLE_FIXUPS script-only.sed"
REF_CONSOLE_FIXUPS="$REF_CONSOLE_FIXUPS host-ping-sanitize.sed"
REF_CONSOLE_FIXUPS="$REF_CONSOLE_FIXUPS klips-debug-sanitize.sed"
REF_CONSOLE_FIXUPS="$REF_CONSOLE_FIXUPS ipsec-setup-sanitize.sed"
REF_CONSOLE_FIXUPS="$REF_CONSOLE_FIXUPS pluto-whack-sanitize.sed"

EASTHOST=east
EAST_INIT_SCRIPT=eastinit.sh
EAST_FINAL_SCRIPT=final.sh
REF_EAST_CONSOLE_OUTPUT=east-console.txt
REF26_EAST_CONSOLE_OUTPUT=east-console.txt

NORTHHOST=north
NORTH_INIT_SCRIPT=northinit.sh
NORTH_RUN_SCRIPT=northrun.sh
NORTH_FINAL_SCRIPT=final.sh
REF_NORTH_CONSOLE_OUTPUT=north-console.txt
REF26_NORTH_CONSOLE_OUTPUT=north-console.txt

NICHOST=nic
NIC_INIT_SCRIPT=../nat-pluto-01/nicinit.sh
