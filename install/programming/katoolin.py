#!/usr/bin/python



#!/usr/bin/python

import os
import sys, traceback

def main():
    try:
        cmd1 = os.system("apt-key adv --keyserver pgp.mit.edu --recv-keys ED444FF07D8D0BF6")
        cmd2 = os.system("echo '# Kali linux repositories | Added by Katoolin\ndeb http://http.kali.org/kali kali-rolling main contrib non-free' >> /etc/apt/sources.list")
        cmd3 = os.system("apt-get update -m")
        cmd = os.system("apt-get -fy install hashcat acccheck ace-voip amap automater braa casefile cdpsnarf ")
        cmd = os.system("apt-get -fy install cisco-torch cookie-cadger copy-router-config dmitry dnmap dnsenum dnsmap dnsrecon ")
        cmd = os.system("apt-get -fy install dnstracer dnswalk dotdotpwn enum4linux enumiax exploitdb fierce firewalk fragroute ")
        cmd = os.system("apt-get -fy install fragrouter ghost-phisher golismero goofile lbd maltego-teeth masscan metagoofil ")
        cmd = os.system("apt-get -fy install miranda nmap p0f parsero recon-ng set smtp-user-enum snmpcheck sslcaudit sslsplit ")
        cmd = os.system("apt-get -fy install sslstrip sslyze thc-ipv6 theharvester tlssled twofi urlcrazy wireshark wol-e xplico ")
        cmd = os.system("apt-get -fy install ismtp intrace hping3 bbqsql bed cisco-auditing-tool cisco-global-exploiter cisco-ocs ")
        cmd = os.system("apt-get -fy install cisco-torch copy-router-config doona dotdotpwn greenbone-security-assistant hexorbase ")
        cmd = os.system("apt-get -fy install jsql lynis nmap ohrwurm openvas-cli openvas-manager openvas-scanner oscanner powerfuzzer ")
        cmd = os.system("apt-get -fy install sfuzz sidguesser siparmyknife sqlmap sqlninja sqlsus thc-ipv6 tnscmd10g ")
        cmd = os.system("apt-get -fy install unix-privesc-check yersinia aircrack-ng asleap bluelog blueranger bluesnarfer bully ")
        cmd = os.system("apt-get -fy install cowpatty crackle eapmd5pass fern-wifi-cracker ghost-phisher giskismet gqrx kalibrate-rtl ")
        cmd = os.system("apt-get -fy install killerbee kismet mdk3 mfcuk mfoc mfterm multimon-ng pixiewps reaver redfang spooftooph ")
        cmd = os.system("apt-get -fy install wifi-honey wifitap wifite apache-users arachni bbqsql blindelephant burpsuite cutycapt ")
        cmd = os.system("apt-get -fy install davtest deblaze dirb dirbuster fimap funkload grabber jboss-autopwn joomscan jsql ")
        cmd = os.system("apt-get -fy install maltego-teeth padbuster paros parsero plecost powerfuzzer proxystrike recon-ng skipfish ")
        cmd = os.system("apt-get -fy install sqlmap sqlninja sqlsus ua-tester uniscan vega w3af webscarab websploit wfuzz wpscan ")
        cmd = os.system("apt-get -fy install xsser zaproxy burpsuite dnschef fiked hamster-sidejack hexinject iaxflood inviteflood ")
        cmd = os.system("apt-get -fy install ismtp mitmproxy ohrwurm protos-sip rebind responder rtpbreak rtpinsertsound rtpmixsound ")
        cmd = os.system("apt-get -fy install sctpscan siparmyknife sipp sipvicious sniffjoke sslsplit sslstrip thc-ipv6 voiphopper ")
        cmd = os.system("apt-get -fy install webscarab wifi-honey wireshark xspy yersinia zaproxy cryptcat cymothoa dbd dns2tcp ")
        cmd = os.system("apt-get -fy install http-tunnel httptunnel intersect nishang polenum powersploit pwnat ridenum sbd u3-pwn ")
        cmd = os.system("apt-get -fy install webshells weevely casefile cutycapt dos2unix dradis keepnote magictree metagoofil ")
        cmd = os.system("apt-get -fy install nipper-ng pipal armitage backdoor-factory cisco-auditing-tool cisco-global-exploiter ")
        cmd = os.system("apt-get -fy install cisco-ocs cisco-torch crackle jboss-autopwn linux-exploit-suggester maltego-teeth ")
        cmd = os.system("apt-get -fy install set shellnoob sqlmap thc-ipv6 yersinia beef-xss binwalk bulk-extractor chntpw cuckoo ")
        cmd = os.system("apt-get -fy install dc3dd ddrescue dumpzilla extundelete foremost galleta guymager iphone-backup-analyzer ")
        cmd = os.system("apt-get -fy install p0f pdf-parser pdfid pdgmail peepdf volatility xplico dhcpig funkload iaxflood ")
        cmd = os.system("apt-get -fy install inviteflood ipv6-toolkit mdk3 reaver rtpflood slowhttptest t50 termineter thc-ipv6 ")
        cmd = os.system("apt-get -fy install thc-ssl-dos acccheck burpsuite cewl chntpw cisco-auditing-tool cmospwd creddump crunch ")
        cmd = os.system("apt-get -fy install findmyhash gpp-decrypt hash-identifier hexorbase john johnny keimpx maltego-teeth ")
        cmd = os.system("apt-get -fy install maskprocessor ncrack oclgausscrack pack patator polenum rainbowcrack rcracki-mt rsmangler ")
        cmd = os.system("apt-get -fy install statsprocessor thc-pptp-bruter truecrack webscarab wordlists zaproxy apktool dex2jar ")
        cmd = os.system("apt-get -fy install python-distorm3 edb-debugger jad javasnoop jd ollydbg smali valgrind yara android-sdk ")
        cmd = os.system("apt-get -fy install apktool arduino dex2jar sakis3g smali ")

                        #"wget http://www.morningstarsecurity.com/downloads/bing-ip2hosts-0.4.tar.g"
                        #"tar -xzvf bing-ip2hosts-0.4.tar.gz"
                        #"sudo mv bing-ip2hosts-0.4/bing-ip2hosts /usr/local/bin"
                        #"rm bing-ip2hosts-0.4.tar.gz")

        infile = "/etc/apt/sources.list"
        outfile = "/etc/apt/sources.list"

        delete_list = ["# Kali linux repositories | Added by Katoolin\n", "deb http://http.kali.org/kali kali-rolling main contrib non-free\n"]
        fin = open(infile)
        os.remove("/etc/apt/sources.list")
        fout = open(outfile, "w+")
        for line in fin:
            for word in delete_list:
                line = line.replace(word, "")
            fout.write(line)
        fin.close()
        fout.close()
        print ("\033[1;31m\nAll kali linux repositories have been deleted !\n\033[1;m")
    except KeyboardInterrupt:
        print ("Shutdown requested...Goodbye...")
    except Exception:
        traceback.print_exc(file=sys.stdout)
        sys.exit(0)

if __name__ == "__main__":
    main()
