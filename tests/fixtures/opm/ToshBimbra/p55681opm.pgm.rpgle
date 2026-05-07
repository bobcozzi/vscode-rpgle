      *%METADATA                                                       *
      * %TEXT Recreate for PMR                                         *
      *%EMETADATA                                                      *
     FAPSumry   IP   E             Disk
     FQPrint    O    F  132        Printer OflInd(*INOF)
     F*
     O* * * * * * * * * * * * Output Specifications * * * * * * * * * * * * * *
     OQPRINT    H    1P                     2 03
     O         OR    OF
     O                                            5 'Date'
     O                       UDATE         Y     15
     O                                          127 'Page'
     O                       PAGE          Z    132
     O*
     O          H    1P                     2
     O         OR    OF
     O                                            6 'Column'
     O                                           15 'Headings'
     O*
     O          D   N1P                     1
     O                       vndrno        k     15
     O                       invtot        k     30
     O*
     O          T    LR                  1
     O                                           18 '* End of Report *'
