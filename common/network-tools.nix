{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    arp-scan      # for ip <-> mac map search
    dnsutils      # dig
    ethtool       # gets info like link speed
    iftop         # network top
    nettools      # ifconfig, netstat, arp
    nmap          # determine open ports
    nbtscan       # netbios scanner
    sshuttle      # forward ssh through tunnel
    whois         # whois
    socat         # sort of like nc but doesn't hang
    sshfs         # ssh mounts
    iptables      # packet filtering rules
    fail2ban      # bans repeated attempts at logins from IPs
    speedtest-cli # cli interface for testing bandwidth
    # tcpstat     # doesn't exist on nix
  ];
}
