$ORIGIN m1-3.ephec-ti.be.
$TTL 604800
@       IN      SOA     ns.m1-3.ephec-ti.be. a.leveau.students.ephec.be. (
                        1           ; Serial
                        604800      ; Refresh
                        86400       ; Retry
                        2419200     ; Expire
                        604800 )    ; Negative Cache TTL
;
; NS configs
@           IN      NS      ns.m1-3.ephec-ti.be.
ns          IN      A       135.125.101.189

; Web
b2b         IN      A       135.125.101.189
www         IN      A       135.125.101.189