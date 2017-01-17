# qw-xslt-transformations
contains the xslt transformation needed to convert queueWatch HTML to text files

- required XSLT parameters are:
	1. <xsl:param name="NODEID"></xsl:param> for the nodename (like NODE1)
	2. <xsl:param name="DATETIME"></xsl:param> for the Date and Time when the XSLT transform had been started

output of one call should always have the same DateTime stamp.



Sample output that should be shown as text:
NODE1 2016-12-06 14:46:11 HDR  host 9.155.214.99 port 10000 rate 5000 threshold 90.0 node 1 memory on wfid on 205 205 April 2015
NODE1 2016-12-06 14:46:11 CFG MaxThreads=120  AE_ExecuteCycle;1000;100;100;100;100;10;5;2;50; AE_ExecuteCycleTime;1000000000;1000000000;10000000;2000000;100000;100000;500;300;100000; QueueDepth;500000;500000;500000;500000;500000;500000;500000;500000;500000; MaxPoolSize;1;5;9;16;32;16;32;32;4; CachingThreshold;0;10;10;20;30;50;50;100;10; MinPoolSize;0;0;0;1;0;0;0;0;0; JavaPriority;5;5;5;5;5;5;5;5;5; EnableDeadlines;null;null;null;null;null;null;null;null;null; Rescheduling;true;true;true;true;true;true;true;true;true; ReschedulingInterval;5000;5000;5000;5000;5000;5000;5000;5000;5000; MaxWaitTime;1000000000;1000000000;1000000000;72000000;3600000;3600000;1200000;60000;3600000; ResourceAllocation;10;20;40;50;50;60;90;120;50; InitialCycles;5;5;5;5;5;5;5;10;5; DeadlineThreads;null;null;null;null;null;null;null;null;null; StealThreads;false;false;false;true;false;false;false;false;false; AllowStealing;true;true;true;true;false;true;true;true;false;
NODE1 2016-12-06 14:46:11 ENV  Architecture;amd64; Procs;4; OSName;Linux; OSVersion;2.6.32-431.el6.x86_64; VMStart;2016.12.03 01:14:01; VMUptime;336613916; VMversion;2.6; VMvendor;IBM Corporation; LiveThreads;234; Deamons;146; Peak;263; TotStarted;72 244 ; CurHeap;15 622 ; ComHeap;3 086 942 ; InitHeap;3 087 008 ; MaxHeap;3 087 008 ;
NODE1 2016-12-06 14:46:11 QUE QUEUE 1 0 0 1 0 1 0 QUEUE 2 0 0 5 0 5 0 QUEUE 3 0 0 9 0 9 0 QUEUE 4 1 1 16 2 16 0 QUEUE 5 0 0 13 0 32 0 QUEUE 6 0 0 15 0 16 0 QUEUE 7 0 0 23 0 32 0 QUEUE 8 0 0 30 0 32 0 QUEUE 9 0 0 4 0 4 0 
NODE1 2016-12-06 14:46:11 WFC  QUEUE 4 INS_ID 402513 WF_ID 294121 STEP_ID 16 EXPED false DEADLINE 0 PRTY -1 QUEUED(ms) 4537 BP MailboxEvaluateAllAutomaticRulesSubMin
NODE1 2016-12-06 14:46:11 MEM  TOT(GB) 3.09 TOT(B) 3 086 942  FREE(GB) 2.63 FREE(B) 2 628 653  FREE(%) 85.15% PROCS 4
NODE1 2016-12-06 14:46:11 JDBC 7 pPSoraclePool_NoTrans 1 530 1 0 0 0 0 pPETERSPOOL 1 502 1 0 0 0 0 pmssqlUIPool 1 510 213 0 0 0 0 pmssqlArchivePool 1 530 1 0 0 0 0 pmssqlPool_local 5 540 34925 0 0 0 0 pmssqlPool 7 540 204628 0 0 2 0 pmssqlPool_NoTrans 10 540 272132 0 0 2 0 
