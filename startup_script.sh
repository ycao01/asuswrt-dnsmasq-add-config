#!/bin/sh

until pidof dnsmasq; do
  echo "wait 5 seconds for dnsmasq to start up..."
  sleep 5
done

sleep 3
service stop_dnsmasq
cat /jffs/dnsmasq.conf.add >> /etc/dnsmasq.conf
sleep 1
dnsmasq
