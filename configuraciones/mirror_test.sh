#!/bin/bash

# mirror_test.sh
# Originally written for Ubuntu by Lance Rushing <lance_rushing@hotmail.com>
# Dated 9/1/2006
# Taken from http://ubuntuforums.org/showthread.php?t=251398
# This script is covered under the GNU Public License: http://www.gnu.org/licenses/gpl.txt

# Modified for Slackware by Jeremy Brent Hansen <jebrhansen -at- gmail.com>
# Modified 2015/11/06

# Modified 2016/05/13 by Jose Bovet Derpich jose.bovet@gmail.com

#----------------------------------------------------------------
# Slackware64-current
#----------------------------------------------------------------
# Add or change mirrors from /etc/slackpkg/mirrors as desired (these are the US mirrors)

MIRRORS="https://mirrors.slackware.com/slackware/slackware64-current/
https://slackware.zero.com.ar/slackware/slackware64-current/
https://mirrors.slackware.devl.club/slackware/slackware64-current/
ftp://ftp.cc.swin.edu.au/slackware/slackware64-current/
https://ftp.cc.swin.edu.au/slackware/slackware64-current/
ftp://ftp.iinet.net.au/pub/slackware/slackware64-current/
https://ftp.iinet.net.au/pub/slackware/slackware64-current/
ftp://mirror.aarnet.edu.au/pub/slackware/slackware64-current/
https://mirror.aarnet.edu.au/pub/slackware/slackware64-current/
ftp://mirror.as24220.net/pub/slackware/slackware64-current/
https://mirror.as24220.net/pub/slackware/slackware64-current/
ftp://mirror.internode.on.net/.pub2/slackware/slackware64-current/
https://mirror.internode.on.net/pub/slackware/slackware64-current/
https://mirror.primusdatacentre.com.au/slackware/slackware64-current/
ftp://ftp.slackware.at/slackware64-current/
https://ftp.slackware.at/data/slackware64-current/
ftp://gd.tuwien.ac.at/opsys/linux/freesoftware.com/slackware64-current/
https://gd.tuwien.ac.at/opsys/linux/freesoftware.com/slackware64-current/
ftp://mirror.datacenter.by/pub/slackware/slackware64-current/
https://mirror.datacenter.by/pub/slackware/slackware64-current/
ftp://ftp.slackware-brasil.com.br/slackware64-current/
https://ftp.slackware-brasil.com.br/slackware64-current/
ftp://mirrors.unixsol.org/slackware/slackware64-current/
https://mirrors.unixsol.org/slackware/slackware64-current/
ftp://mirror.csclub.uwaterloo.ca/slackware/slackware64-current/
https://mirror.csclub.uwaterloo.ca/slackware/slackware64-current/
ftp://mirror.its.dal.ca/slackware/slackware64-current/
https://mirror.its.dal.ca/slackware/slackware64-current/
https://mirrors.163.com/slackware/slackware64-current/
https://mirrors.ustc.edu.cn/slackware/slackware64-current/
ftp://mirrors.ucr.ac.cr/slackware/slackware64-current/
https://mirrors.ucr.ac.cr/slackware/slackware64-current/
ftp://odysseus.linux.cz/pub/linux/slackware/slackware64-current/
https://odysseus.linux.cz/pub/linux/slackware/slackware64-current/
ftp://mirrors.dotsrc.org/slackware/slackware64-current/
https://mirrors.dotsrc.org/slackware/slackware64-current/
ftp://elektroni.phys.tut.fi/slackware64-current/
ftp://mirror.ovh.net/mirrors/ftp.slackware.com/slackware64-current/
https://mirror.ovh.net/mirrors/ftp.slackware.com/slackware64-current/
ftp://nephtys.lip6.fr/pub/linux/distributions/slackware/slackware64-current/
https://nephtys.lip6.fr/pub/linux/distributions/slackware/slackware64-current/
ftp://ftp.fu-berlin.de/unix/linux/slackware/slackware64-current/
ftp://ftp.gwdg.de/pub/linux/slackware/slackware64-current/
https://ftp.gwdg.de/pub/linux/slackware/slackware64-current/
ftp://ftp.tu-chemnitz.de/pub/linux/slackware/slackware64-current/
https://ftp.tu-chemnitz.de/pub/linux/slackware/slackware64-current/
ftp://sunsite.informatik.rwth-aachen.de/pub/comp/Linux/slackware/slackware64-current/
https://sunsite.informatik.rwth-aachen.de/ftp/pub/comp/Linux/slackware/slackware64-current/
ftp://wrz1013.rz.uni-wuerzburg.de/pub/MIRROR/slackware/slackware64-current/
https://wrz1013.rz.uni-wuerzburg.de/pub/MIRROR/slackware/slackware64-current/
ftp://ftp.cc.uoc.gr/mirrors/linux/slackware/slackware64-current/
https://ftp.cc.uoc.gr/mirrors/linux/slackware/slackware64-current/
ftp://ftp.otenet.gr/pub/linux/slackware/slackware64-current/
https://ftp.otenet.gr/linux/slackware/slackware64-current/
ftp://patroklos.noc.ntua.gr/pub/linux/slackware/slackware64-current/
https://patroklos.noc.ntua.gr/pub/linux/slackware/slackware64-current/
https://kambing.ui.ac.id/slackware/slackware64-current/
https://repo.ukdw.ac.id/slackware/slackware64-current/
ftp://ftp.heanet.ie/mirrors/ftp.slackware.com/pub/slackware/slackware64-current/
https://ftp.heanet.ie/mirrors/ftp.slackware.com/pub/slackware/slackware64-current/
ftp://ba.mirror.garr.it/mirrors/Slackware/slackware64-current/
https://ba.mirror.garr.it/mirrors/Slackware/slackware64-current/
ftp://ftp.nara.wide.ad.jp/pub/Linux/slackware/slackware64-current/
https://ftp.nara.wide.ad.jp/pub/Linux/slackware/slackware64-current/
ftp://riksun.riken.go.jp/Linux/slackware/slackware64-current/
https://riksun.riken.go.jp/Linux/slackware/slackware64-current/
https://mirrors.atviras.lt/slackware/slackware64-current/
https://mirrors.atviras.lt/slackware/slackware64-current/
ftp://ftp.nluug.nl/pub/os/Linux/distr/slackware/slackware64-current/
https://ftp.nluug.nl/os/Linux/distr/slackware/slackware64-current/
ftp://mirror.nl.leaseweb.net/slackware/slackware64-current/
https://mirror.nl.leaseweb.net/slackware/slackware64-current/
ftp://ftp.slackware.no/slackware/slackware64-current/
https://ftp.slackware.no/slackware/slackware64-current/
ftp://ftp.slackware.pl/pub/slackware/slackware64-current/
https://ftp.slackware.pl/pub/slackware/slackware64-current/
ftp://sunsite.icm.edu.pl/vol/rzm1/linux-slackware/slackware64-current/
https://sunsite.icm.edu.pl/packages/linux-slackware/slackware64-current/
https://mirror.rol.ru/slackware/slackware64-current/
ftp://mirror.yandex.ru/slackware/slackware64-current/
https://mirror.yandex.ru/slackware/slackware64-current/
ftp://ftp.is.co.za/mirror/ftp.slackware.com/pub/slackware64-current/
https://ftp.is.co.za/mirror/ftp.slackware.com/pub/slackware64-current/
ftp://ftp.wa.co.za/pub/slackware/slackware64-current/
https://ftp.wa.co.za/pub/slackware/slackware64-current/
ftp://slackware.mirror.ac.za/slackware64-current/
https://slackware.mirror.ac.za/slackware64-current/
ftp://ftp.sunet.se/mirror/slackware.com/slackware64-current/
https://ftp.sunet.se/mirror/slackware.com/slackware64-current/
https://mirror.init7.net/slackware/slackware64-current/
ftp://ftp.isu.edu.tw/pub/Linux/Slackware/slackware64-current/
https://ftp.isu.edu.tw/pub/Linux/Slackware/slackware64-current/
ftp://ftp.twaren.net/pub/Linux/Slackware/slackware64-current/
https://ftp.twaren.net/Linux/Slackware/slackware64-current/
ftp://ftp.linux.org.tr/slackware/slackware64-current/
https://ftp.linux.org.tr/slackware/slackware64-current/
ftp://mirrors.mithril.org.ua/linux/slackware/slackware64-current/
https://mirrors.mithril.org.ua/linux/slackware/slackware64-current/
https://slackware.uk/slackware/slackware64-current/
ftp://slackware.uk/slackware/slackware64-current/
ftp://ftp.mirrorservice.org/sites/ftp.slackware.com/pub/slackware/slackware64-current/
https://ftp.mirrorservice.org/sites/ftp.slackware.com/pub/slackware/slackware64-current/
ftp://mirror.bytemark.co.uk/slackware/slackware64-current/
https://mirror.bytemark.co.uk/slackware/slackware64-current/
ftp://mirror.cs.princeton.edu/pub/mirrors/slackware/slackware64-current/
https://mirrors.us.kernel.org/slackware/slackware64-current/
ftp://mirrors.xmission.com/slackware/slackware64-current/
https://mirrors.xmission.com/slackware/slackware64-current/
https://mirror.slackbuilds.org/slackware/slackware64-current/
https://slackware.cs.utah.edu/pub/slackware/slackware64-current/
https://slackware.mirrors.tds.net/pub/slackware/slackware64-current/
https://spout.ussg.indiana.edu/linux/slackware/slackware64-current/
https://ny.mirrors.kernel.org/slackware/slackware64-current/"



# Use any adequetly sized file to test the speed. This is ~7MB.
# The location should be based on the relative location within
# the slackware64-current tree. I originally tried a smaller 
# file (FILELIST.TXT ~1MB), but I was seeing slower speed results
# since it didn't have time to fully max my connection. Depending
# on your internet speed, you may want to try different sized files.
FILE="kernels/huge.s/bzImage"

# Number of seconds before the test is considered a failure
TIMEOUT="5"

# String to store results in
RESULTS=""

# Set color variables to make results and echo statements cleaner
RED="\e[31m"
GREEN="\e[32m"
NC="\e[0m"  #No color

for MIRROR in $MIRRORS ; do
    
    echo -n "Testing ${MIRROR} "    
    URL="${MIRROR}${FILE}"
    SPEED=$(curl --max-time $TIMEOUT --silent --output /dev/null --write-out %{speed_download} $URL)

    if (( $(echo "$SPEED < 10000.000" | bc -l) )) ; then
        echo -e "${RED}Fail${NC}";
    else 
        SPEED="$(numfmt --to=iec-i --suffix=B --padding=7 $SPEED)ps"
        echo -e "${GREEN}$SPEED${NC}"
        RESULTS="${RESULTS}\t${SPEED}\t${MIRROR}\n";
    fi

done;
echo -e "\nResults:"
echo -e $RESULTS | sort -hr  

