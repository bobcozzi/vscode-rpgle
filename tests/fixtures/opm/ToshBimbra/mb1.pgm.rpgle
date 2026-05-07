      *%METADATA                                                       *
      * %TEXT PMR 46030                                                *
      *%EMETADATA                                                      *
     H datedit(*mdyj)
      /SPACE
      * Program description
      * -------------------
      * Exit program for exit point QIBM_QDB_OPEN
      /SPACE
      * Parameterstring
     d DBOP0100        ds
     d  headerSize                   10i 0
     d  formatName                    8
     d  arrOffset                    10i 0
     d  fileCount                    10i 0
     d  elementLen                   10i 0
     d  jobName                      10
     d  userName                     10
     d  jobNumber                     6
     d  current                      10
     d  queryOpen                     1
     d DBOPFile        ds                  based(DBOPFPtr)
     d  fileName                     10
     d  fileLibr                     10
     d  member                       10
     d                                2
     d  fileType                     10i 0
     d  underPF                      10i 0
     d  inputO                        1
     d  outputO                       1
     d  updateO                       1
     d  deleteO                       1
      /SPACE
      * Returncode binary 4 bytes
     D returnb         S             10I 0
      /SPACE
     C     *entry        PLIST
     C                   PARM                    DBOP0100
     C                   PARM                    returnb
      /SPACE
      * Returncode always set to 0
     C                   Z-ADD     0             returnb
     C                   RETURN
     C                   SETON                                        LR

