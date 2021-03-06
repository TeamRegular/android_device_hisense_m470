#!/system/bin/sh
echo "#*************************************************"
echo "# Script usage:" 
echo "# $0 <channel #> <legacy rate>" 
echo "#"
echo "# Example: test RX with channel 1, 11Mbps"
echo "# $0 1 11"
echo "# Note: Please have an adhoc(name:test) network ready."
echo "#*************************************************"

echo "wlarm disassoc"
wlarm disassoc
sleep 1
echo "wlarm down"
wlarm down
sleep 1
echo "wlarm up"
wlarm up
sleep 1
echo "wlarm channel $1"
wlarm channel $1
sleep 1
echo "wlarm txant 0"
wlarm txant 0
sleep 1
echo "wlarm chanspec -c $1 -b 2 -w 20 -s 0"
wlarm chanspec -c $1 -b 2 -w 20 -s 0
sleep 1
echo "Connect to wlan name: test with adhoc mode"
echo "wlarm join test imode adhoc"
wlarm join test imode adhoc
sleep 2
echo "wlarm rateset $2b"
wlarm rateset $2b
sleep 1
echo "wlarm nrate -r $2 -s 0"
wlarm nrate -r $2 -s 0
sleep 1
echo "wlarm counters"
wlarm counters
echo "Script end."