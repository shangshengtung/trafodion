CREATE TABLE demo.sales.parts
( partnum       NUMERIC (4) UNSIGNED NO DEFAULT NOT NULL
, partdesc      CHARACTER (18)       NO DEFAULT NOT NULL
, price         NUMERIC (8, 2)       NO DEFAULT NOT NULL
, qty_available NUMERIC (5)          DEFAULT 0  NOT NULL
, PRIMARY KEY (partnum)
) ;

CREATE INDEX xpartdes ON parts
( partdesc
) ;

INSERT INTO demo.sales.parts VALUES
  (  186, '186 MegaByte Disk',  186186.86, 186  )
, (  212, 'PC SILVER, 20 MB',     2500.00, 3525 )
, (  244, 'PC GOLD, 30 MB',       3000.00, 4426 )
, (  255, 'PC DIAMOND, 60 MB',    4000.00, 3321 )
, ( 2001, 'GRAPHIC PRINTER,M1',   1100.00, 2100 )
, ( 2002, 'GRAPHIC PRINTER,M2',   1500.00, 3220 )
, ( 2003, 'GRAPHIC PRINTER,M3',   2000.00, 2200 )
, ( 2402, 'DAISY PRINTER,T1',      350.00, 4425 )
, ( 2403, 'DAISY PRINTER,T2',      650.00, 3312 )
, ( 2405, 'DAISY PRINTER, T3',     795.00, 2712 )
, ( 3103, 'LASER PRINTER, X1',    4200.00, 3300 )
, ( 3201, 'HARD DISK 20 MB',       525.00, 4436 )
, ( 3205, 'HARD DISK 30 MB',       625.00, 2209 )
, ( 3210, 'HARD DISK 40 MB',       715.00, 3314 )
, ( 4102, 'DISKETTE HD, BOX',       28.00, 6540 )
, ( 5100, 'MONITOR BW, TYPE 1',    150.00, 3237 )
, ( 5101, 'MONITOR BW, TYPE 2',    200.00, 2400 )
, ( 5103, 'MONITOR COLOR, M1',     400.00, 3328 )
, ( 5110, 'MONITOR COLOR, M2',     525.00, 3236 )
, ( 5504, 'MEMORY CARD, 512KB',    165.00, 2630 )
, ( 5505, 'MEMORY CARD, 1 MB',     315.00, 3830 )
, ( 6201, 'GRAPHIC CARD, LR',      195.00, 2306 )
, ( 6301, 'GRAPHIC CARD, HR',      245.00, 2331 )
, ( 6400, 'STREAMING TAPE,M20',    550.00, 1268 )
, ( 6401, 'STREAMING TAPE,M60',    725.00, 1308 )
, ( 6500, 'DISK CONTROLLER',        95.00, 2532 )
, ( 6603, 'PRINTER CONTROLLER',     45.00, 430  )
, ( 7102, 'SMART MODEM, 1200',     275.00, 2200 )
, ( 7301, 'SMART MODEM, 2400',     425.00, 2332 )
;

UPDATE STATISTICS FOR TABLE demo.sales.parts ON EVERY COLUMN ;
