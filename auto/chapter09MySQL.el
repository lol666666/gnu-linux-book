(TeX-add-style-hook
 "chapter09MySQL"
 (lambda ()
   (LaTeX-add-labels
    "sec:exportData"
    "sec:importData"
    "sec:ForgotMysqlPass"
    "fig:mysqlReplicationWorks"
    "chap:mha"
    "sec:MHAEnvSpecific"
    "sec:SSHSetup"
    "InstallMySQL"
    "sec:InstallMHANode"
    "sec:InstallNode"
    "sec:InstallManager")
   (LaTeX-add-index-entries
    "MySQL")))

