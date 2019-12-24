#!/bin/bash
# Automated Info-Gathering Tool BY TEAM ID:- BB-69891092
# TEAM LEADER: NAVIKA RAJPUT
# TEAM MEMBER 1: KAUSHALENDRA PRATAP SINGH
# TEAM MEMBER 2: PARTH YADAV
# TEAM MEMBER 3: NAVIKA RAJPUT
# TEAM MEMBER 4: PRANAV SHARMA
#
#
# Tested Operating System : Kali Linux(2019.4) 
# 
# We Recommend Use This Tool On Kali Linux(2019.4)
# 
# This is Only Prototype Of The Tool
#
#

echo "██████╗ ██████╗  ██████╗    ████████╗ ██████╗  ██████╗ ██╗     " 
echo "██╔══██╗██╔══██╗██╔════╝    ╚══██╔══╝██╔═══██╗██╔═══██╗██║     "
echo "██████╔╝██████╔╝██║            ██║   ██║   ██║██║   ██║██║     "
echo "██╔══██╗██╔══██╗██║            ██║   ██║   ██║██║   ██║██║     "
echo "██████╔╝██████╔╝╚██████╗       ██║   ╚██████╔╝╚██████╔╝███████╗"
echo "╚═════╝ ╚═════╝  ╚═════╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝"
echo "                        Techfest 2019-2020         "
echo "╔════════════════════════════════════════════════════════════════╗"
echo "║                                                                ║"
echo "║   Automated Info-Gathering Tool BY TEAM ID:- BB-69891092       ║"   
echo "║                                                                ║"
echo "╚════════════════════════════════════════════════════════════════╝"         
echo "╔════════════════════════════════════════════════════════════════╗"
echo "║         Team Leader:- NAVIKA RAJPUT                            ║"
echo "║         Team Member 1: Kaushalendra Pratap Singh               ║"
echo "║         Team Member 2: Parth Yadav                             ║"
echo "║         Team Member 3: Navika Rajput                           ║"
echo "║         Team Member 4: Pranav Sharma                           ║"
echo "║                                                                ║"
echo "║            Tested on : Kali Linux(2019.4)                      ║"
echo "║                                                                ║"              
echo "╚════════════════════════════════════════════════════════════════╝"
echo "◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦"
echo "◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦"
echo "Enter Site URL :"
read BBC
echo ""
echo ""
echo ""
echo ""
echo "⥒⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥗"
echo "                     BBC TOOL STARTED                              "              
echo "⥒⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥐⥗"

echo ""
echo "⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌"
echo "                 SITE OWNER INFORMATION                            "              
echo "⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌⚌"
echo ""
echo "whois looking up STARTED"
whois $BBC
echo "whois looking up ENDED"
echo ""
echo "nslooking up STARTED"
nslookup $BBC
echo "nslooking up ENDED"
echo ""
echo "scanning with nmap STARTED"
nmap -v -O $BBC
echo "scanning with nmap ENDED"
echo ""
echo "Now We Starting HARVESTER for Gathering EMAIL and SUBDOMAIN"
python ToolBBC/theHarvester/theHarvester.py -d $BBC -l 500 -b google
echo "the HARVESTER ENDED"
echo ""
echo "Now We Starting METAGOOFIL for Gathering Important Document"
python ToolBBC/metagoofil/metagoofil.py -d $BBC -t doc,pdf,xls,csv,txt -l 200 -n 50 -o metagoofiles -f data.html
echo "METAGOOFIL ENDED"
echo ""
echo "Now We Starting DNSRECON for gathering DNS record "
python ToolBBC/dnsrecon/dnsrecon.py -d $BBC
echo "DNSRECON ENDED"
echo ""
echo "Now We Starting SUBLIST3R To Enumerate Subdomains of Website"
dig -x $BBC
python ToolBBC/sublist3r/sublist3r.py --domain $BBC
echo ""
echo "⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄"            
echo "⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄"
echo ""
echo "⇽−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−⇾"
echo "                                                                "
echo "             Web Application Firewall Scanning Started          "
echo "                                                                "              
echo "⇽−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−⇾"
echo ""
echo "We Use WAFOOF Tool To Identify and Fingerprint Web Application Firewall Products"
echo "Scanning Web Application Firewall with WAFOOF"
wafw00f http://$BBC
echo "Scanning Web Application Firwall Ended"
echo ""
echo "⇽−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−⇾"
echo "                                                                "
echo "             Web Application Firewall Scanning ENDED            "
echo "                                                                "              
echo "⇽−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−⇾"
echo ""
echo "∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾"
echo "                   XSS Scanning Started                         "              
echo "∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾"
echo "Now Scanning Started"
python ToolBBC/XssPy.py -u $BBC -v
echo "Now Scanning Ended"
echo "∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾"
echo "                    XSS Scanning Ended                           "              
echo "∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾∾"
echo ""
echo "╔⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓╗"
echo "║              Web Vulnerability Scanning Started                ║"              
echo "╚⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔╝"
echo "Checking WEB with whatweb "
./ToolBBC/WhatWeb/whatweb $BBC
echo ""
echo ""
echo "Checking WEB with SPAGHETTI "
echo "Spaghetti is a web vulnerability scanner to find flaws in common web applications and frameworks"
python ToolBBC/Spaghetti/spaghetti.py --url http://$BBC --scan [0-3] 
echo ""
echo "╔════════════════════════════════════════════════════════════════╗"
echo "║                   Scan Wordpress STARTED                       ║"              
echo "╚════════════════════════════════════════════════════════════════╝"
echo "Now We Scanning wpscan.rb STARTED "
wpscan --url http://$BBC --enumerate u
echo ""
python ToolBBC/wpscanner.py -s http://$BBC -n 20
droopescan scan wordpress -u http://$BBC
python ToolBBC/WPSeku/wpseku.py --target http://$BBC
echo "╔════════════════════════════════════════════════════════════════╗"
echo "║                   Scan Wordpress ENDED                         ║"              
echo "╚════════════════════════════════════════════════════════════════╝"
echo ""
echo ""
echo "⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕"
echo "                   SCAN JOOMLA STARTED                          "              
echo "⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖"
echo "Now We Started "
./joomscan -u http://$BBC
droopescan scan joomla -u http://$BBC
echo "⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖⊖"
echo "                   SCAN JOOMLA ENDED                            "              
echo "⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕⊕"
echo ""
echo "╔⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓⊓╗"
echo "║             Web Vulnerability Scanning ENDED                   ║"              
echo "╚⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔⊔╝"
echo ""
echo "⊲⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⊳"
echo "                    SSL Vulnerability Scanning Started          "              
echo "⊲⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⊳"
echo "Now We Started SSLSCAN"
sslscan $BBC
echo "SSLSCAN ENDED"
echo ""
echo "Now We SSLYZE:: Started SSLYZE"
sslyze --resum --certinfo=basic --compression --reneg --sslv2 --sslv3 --hide_rejected_ciphers $BBC
echo "SSLYZE ENDED" 
echo "⊲⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⊳"
echo "                   SSL Vulnerability Scanning ENDED             "              
echo "⊲⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⋄⊳"
echo ""
echo ""
echo "⊱⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⊰"
echo "                   Moving Metagoofil Files                        "              
echo "⊱⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⋆⊰"
echo ""
echo "Now Moving Metagoofil Folder"
mv metagoofiles /root/Desktop 
echo "Moving Metagoofil Folder ENDED"
echo ""
echo "Now Moving Metagoofile data.html"
mv data.html /root/Desktop
echo "Moving Metagoofil data.html ENDED"
echo ""
echo ""
echo ""
echo "████████╗██╗  ██╗ █████╗ ███╗   ██╗██╗  ██╗    ██╗   ██╗ ██████╗ ██╗   ██╗"
echo "╚══██╔══╝██║  ██║██╔══██╗████╗  ██║██║ ██╔╝    ╚██╗ ██╔╝██╔═══██╗██║   ██║"
echo "   ██║   ███████║███████║██╔██╗ ██║█████╔╝      ╚████╔╝ ██║   ██║██║   ██║"
echo "   ██║   ██╔══██║██╔══██║██║╚██╗██║██╔═██╗       ╚██╔╝  ██║   ██║██║   ██║"
echo "   ██║   ██║  ██║██║  ██║██║ ╚████║██║  ██╗       ██║   ╚██████╔╝╚██████╔╝"              
echo "   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝       ╚═╝    ╚═════╝  ╚═════╝ "

