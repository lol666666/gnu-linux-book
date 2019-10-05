(TeX-add-style-hook
 "chapter10SomeServices"
 (lambda ()
   (LaTeX-add-labels
    "chap:dns"
    "chap:FTP"
    "chap:NFS"
    "fig:pxeWork"
    "fig:pxeWorkFlow"
    "chap:apache"
    "sec:InstallApache"
    "chap:nginx"
    "sec:AboutNginx"
    "sec:InstallAndStartNginx"
    "sec:NginxConf"
    "sec:NginxReverseProxy"
    "fig:squidVSnginx"
    "sec:SingleCardMultiIP"
    "sec:MegaraidCmd")
   (LaTeX-add-index-entries
    "DHCP"
    "NFS"
    "kickstart")))

