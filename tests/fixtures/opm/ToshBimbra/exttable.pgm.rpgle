      *%METADATA                                                       *
      * %TEXT Using an externally described runtime table              *
      *%EMETADATA                                                      *
     H* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
     H*Program Name: EXTTABLE
     H*Title: Using an externally described runtime table.
     H*Function: Hours worked without an accident (from the LDA) are used
     H* to look up the premium level for which the employee is eligible.
     H*Notes: Table data is stored in the physical file PremMast.
     H*   The file can contain from 1 to 50 records, but if more than 50
     H* are required,the DIMension keywords in the table definitions must
     H* be increaded to match.
     H*   Note also that although the file PremMast is externally described,
     H* table files MUST have an F-spec showing them as program described
     H* with the correct record length, and fields described on D-specs.
     H*   In writing this example I was unable to get it to function
     H* correctly unless all numeric fields were made zoned decimal, not
     H* packed.
     H*Input: LDA
     H*Output: LDA
     H*Called by: Menu or command line
     H*External Calls: None
     H*Compilation Notes/Parameters: None
     H* Indicator Usage Summary:
     H* --------- ----- -------
     H* 90 Record found in Lookup Table
     H*
     F* * * * * * * * * * *   File Specifications   * * * * * * * * * * * *
     F*
     FPremMast  IT   F    6        DISK
     F*
     C* * * * * * * * * * *   Definitions    * * * * * * * * * * * * * * * **
     D*
     DTabHours         S              5P 0 DIM(50) ASCEND FROMFILE(PremMast)
     DTabPrem          S              1    DIM(50) ALT(TabHours)
     D*
     D                UDS
     DDsHours                  1      5  0
     DDsPrem                   6      6
     D*
     C* * * * * * * * * * *   Calculations   * * * * * * * * * * * * * * * **
     C*
     C     DsHours       LOOKUP    TabHours      TabPrem              90  90
     C                   IF        *IN90 = *ON
     C                   EVAL      DsPrem = TabPrem
     C                   ELSE
     C                   EVAL      DsPrem = *BLANK
     C                   ENDIF
     C*
     C                   EVAL      *INLR = *ON
