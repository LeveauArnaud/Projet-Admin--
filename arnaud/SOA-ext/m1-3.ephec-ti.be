$ORIGIN m1-3.ephec-ti.be.
$TTL 604800
@       IN      SOA     ns.m1-3.ephec-ti.be. a.leveau.students.ephec.be. (
                        2021081814           ; Serial
                        43200      ; Refresh
                        7200       ; Retry
                        2419200     ; Expire
                        86400 )    ; Negative Cache TTL
;
; name servers - NS record
@           IN      NS      ns.m1-3.ephec-ti.be.
@			IN      MX  10  mail

; name servers - A record
ns          IN      A       135.125.101.189

; Services Web
serverWeb	IN	    A		135.125.101.189
b2b         IN      CNAME   serverWeb
www         IN      CNAME   serverWeb

; Services Mail
mail        IN      A       135.125.101.189
smtp        IN      CNAME   mail
pop3        IN      CNAME   mail
imap        IN      CNAME   mail

; Services VoIP
_sip._udp	SRV     0       0       5060        sip 
_sip._tcp 	SRV     0       0       5060        sip
sip 		IN	    A	    135.125.101.189