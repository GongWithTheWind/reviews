
/*
********************************************************************************
********************************************************************************
*****                                                                      *****
*****                    Generated From schemaGen.js                       *****
*****             Creates a master table with 1000 partitions              *****
*****                                                                      *****
********************************************************************************
********************************************************************************
*/



CREATE TABLE public.master_04
(
    id bigint NOT NULL,
    home_id bigint,
    reviews_id smallint,
    reviews_review text COLLATE pg_catalog."default",
    reviews_created character varying(100) COLLATE pg_catalog."default",
    reviews_user_id smallint
) PARTITION BY RANGE (home_id) 
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.master_01
    OWNER to "Nicholas";

-- Partitions SQL





    CREATE TABLE "public.0_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1') TO ('10001');

  

    CREATE TABLE "public.1_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('10001') TO ('20001');

  

    CREATE TABLE "public.2_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('20001') TO ('30001');

  

    CREATE TABLE "public.3_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('30001') TO ('40001');

  

    CREATE TABLE "public.4_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('40001') TO ('50001');

  

    CREATE TABLE "public.5_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('50001') TO ('60001');

  

    CREATE TABLE "public.6_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('60001') TO ('70001');

  

    CREATE TABLE "public.7_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('70001') TO ('80001');

  

    CREATE TABLE "public.8_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('80001') TO ('90001');

  

    CREATE TABLE "public.9_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('90001') TO ('100001');

  

    CREATE TABLE "public.10_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('100001') TO ('110001');

  

    CREATE TABLE "public.11_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('110001') TO ('120001');

  

    CREATE TABLE "public.12_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('120001') TO ('130001');

  

    CREATE TABLE "public.13_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('130001') TO ('140001');

  

    CREATE TABLE "public.14_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('140001') TO ('150001');

  

    CREATE TABLE "public.15_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('150001') TO ('160001');

  

    CREATE TABLE "public.16_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('160001') TO ('170001');

  

    CREATE TABLE "public.17_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('170001') TO ('180001');

  

    CREATE TABLE "public.18_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('180001') TO ('190001');

  

    CREATE TABLE "public.19_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('190001') TO ('200001');

  

    CREATE TABLE "public.20_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('200001') TO ('210001');

  

    CREATE TABLE "public.21_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('210001') TO ('220001');

  

    CREATE TABLE "public.22_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('220001') TO ('230001');

  

    CREATE TABLE "public.23_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('230001') TO ('240001');

  

    CREATE TABLE "public.24_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('240001') TO ('250001');

  

    CREATE TABLE "public.25_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('250001') TO ('260001');

  

    CREATE TABLE "public.26_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('260001') TO ('270001');

  

    CREATE TABLE "public.27_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('270001') TO ('280001');

  

    CREATE TABLE "public.28_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('280001') TO ('290001');

  

    CREATE TABLE "public.29_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('290001') TO ('300001');

  

    CREATE TABLE "public.30_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('300001') TO ('310001');

  

    CREATE TABLE "public.31_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('310001') TO ('320001');

  

    CREATE TABLE "public.32_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('320001') TO ('330001');

  

    CREATE TABLE "public.33_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('330001') TO ('340001');

  

    CREATE TABLE "public.34_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('340001') TO ('350001');

  

    CREATE TABLE "public.35_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('350001') TO ('360001');

  

    CREATE TABLE "public.36_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('360001') TO ('370001');

  

    CREATE TABLE "public.37_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('370001') TO ('380001');

  

    CREATE TABLE "public.38_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('380001') TO ('390001');

  

    CREATE TABLE "public.39_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('390001') TO ('400001');

  

    CREATE TABLE "public.40_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('400001') TO ('410001');

  

    CREATE TABLE "public.41_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('410001') TO ('420001');

  

    CREATE TABLE "public.42_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('420001') TO ('430001');

  

    CREATE TABLE "public.43_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('430001') TO ('440001');

  

    CREATE TABLE "public.44_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('440001') TO ('450001');

  

    CREATE TABLE "public.45_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('450001') TO ('460001');

  

    CREATE TABLE "public.46_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('460001') TO ('470001');

  

    CREATE TABLE "public.47_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('470001') TO ('480001');

  

    CREATE TABLE "public.48_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('480001') TO ('490001');

  

    CREATE TABLE "public.49_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('490001') TO ('500001');

  

    CREATE TABLE "public.50_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('500001') TO ('510001');

  

    CREATE TABLE "public.51_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('510001') TO ('520001');

  

    CREATE TABLE "public.52_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('520001') TO ('530001');

  

    CREATE TABLE "public.53_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('530001') TO ('540001');

  

    CREATE TABLE "public.54_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('540001') TO ('550001');

  

    CREATE TABLE "public.55_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('550001') TO ('560001');

  

    CREATE TABLE "public.56_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('560001') TO ('570001');

  

    CREATE TABLE "public.57_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('570001') TO ('580001');

  

    CREATE TABLE "public.58_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('580001') TO ('590001');

  

    CREATE TABLE "public.59_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('590001') TO ('600001');

  

    CREATE TABLE "public.60_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('600001') TO ('610001');

  

    CREATE TABLE "public.61_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('610001') TO ('620001');

  

    CREATE TABLE "public.62_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('620001') TO ('630001');

  

    CREATE TABLE "public.63_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('630001') TO ('640001');

  

    CREATE TABLE "public.64_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('640001') TO ('650001');

  

    CREATE TABLE "public.65_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('650001') TO ('660001');

  

    CREATE TABLE "public.66_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('660001') TO ('670001');

  

    CREATE TABLE "public.67_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('670001') TO ('680001');

  

    CREATE TABLE "public.68_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('680001') TO ('690001');

  

    CREATE TABLE "public.69_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('690001') TO ('700001');

  

    CREATE TABLE "public.70_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('700001') TO ('710001');

  

    CREATE TABLE "public.71_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('710001') TO ('720001');

  

    CREATE TABLE "public.72_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('720001') TO ('730001');

  

    CREATE TABLE "public.73_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('730001') TO ('740001');

  

    CREATE TABLE "public.74_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('740001') TO ('750001');

  

    CREATE TABLE "public.75_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('750001') TO ('760001');

  

    CREATE TABLE "public.76_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('760001') TO ('770001');

  

    CREATE TABLE "public.77_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('770001') TO ('780001');

  

    CREATE TABLE "public.78_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('780001') TO ('790001');

  

    CREATE TABLE "public.79_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('790001') TO ('800001');

  

    CREATE TABLE "public.80_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('800001') TO ('810001');

  

    CREATE TABLE "public.81_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('810001') TO ('820001');

  

    CREATE TABLE "public.82_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('820001') TO ('830001');

  

    CREATE TABLE "public.83_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('830001') TO ('840001');

  

    CREATE TABLE "public.84_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('840001') TO ('850001');

  

    CREATE TABLE "public.85_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('850001') TO ('860001');

  

    CREATE TABLE "public.86_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('860001') TO ('870001');

  

    CREATE TABLE "public.87_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('870001') TO ('880001');

  

    CREATE TABLE "public.88_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('880001') TO ('890001');

  

    CREATE TABLE "public.89_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('890001') TO ('900001');

  

    CREATE TABLE "public.90_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('900001') TO ('910001');

  

    CREATE TABLE "public.91_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('910001') TO ('920001');

  

    CREATE TABLE "public.92_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('920001') TO ('930001');

  

    CREATE TABLE "public.93_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('930001') TO ('940001');

  

    CREATE TABLE "public.94_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('940001') TO ('950001');

  

    CREATE TABLE "public.95_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('950001') TO ('960001');

  

    CREATE TABLE "public.96_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('960001') TO ('970001');

  

    CREATE TABLE "public.97_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('970001') TO ('980001');

  

    CREATE TABLE "public.98_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('980001') TO ('990001');

  

    CREATE TABLE "public.99_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('990001') TO ('1000001');

  

    CREATE TABLE "public.100_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1000001') TO ('1010001');

  

    CREATE TABLE "public.101_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1010001') TO ('1020001');

  

    CREATE TABLE "public.102_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1020001') TO ('1030001');

  

    CREATE TABLE "public.103_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1030001') TO ('1040001');

  

    CREATE TABLE "public.104_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1040001') TO ('1050001');

  

    CREATE TABLE "public.105_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1050001') TO ('1060001');

  

    CREATE TABLE "public.106_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1060001') TO ('1070001');

  

    CREATE TABLE "public.107_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1070001') TO ('1080001');

  

    CREATE TABLE "public.108_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1080001') TO ('1090001');

  

    CREATE TABLE "public.109_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1090001') TO ('1100001');

  

    CREATE TABLE "public.110_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1100001') TO ('1110001');

  

    CREATE TABLE "public.111_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1110001') TO ('1120001');

  

    CREATE TABLE "public.112_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1120001') TO ('1130001');

  

    CREATE TABLE "public.113_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1130001') TO ('1140001');

  

    CREATE TABLE "public.114_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1140001') TO ('1150001');

  

    CREATE TABLE "public.115_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1150001') TO ('1160001');

  

    CREATE TABLE "public.116_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1160001') TO ('1170001');

  

    CREATE TABLE "public.117_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1170001') TO ('1180001');

  

    CREATE TABLE "public.118_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1180001') TO ('1190001');

  

    CREATE TABLE "public.119_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1190001') TO ('1200001');

  

    CREATE TABLE "public.120_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1200001') TO ('1210001');

  

    CREATE TABLE "public.121_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1210001') TO ('1220001');

  

    CREATE TABLE "public.122_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1220001') TO ('1230001');

  

    CREATE TABLE "public.123_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1230001') TO ('1240001');

  

    CREATE TABLE "public.124_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1240001') TO ('1250001');

  

    CREATE TABLE "public.125_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1250001') TO ('1260001');

  

    CREATE TABLE "public.126_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1260001') TO ('1270001');

  

    CREATE TABLE "public.127_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1270001') TO ('1280001');

  

    CREATE TABLE "public.128_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1280001') TO ('1290001');

  

    CREATE TABLE "public.129_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1290001') TO ('1300001');

  

    CREATE TABLE "public.130_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1300001') TO ('1310001');

  

    CREATE TABLE "public.131_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1310001') TO ('1320001');

  

    CREATE TABLE "public.132_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1320001') TO ('1330001');

  

    CREATE TABLE "public.133_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1330001') TO ('1340001');

  

    CREATE TABLE "public.134_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1340001') TO ('1350001');

  

    CREATE TABLE "public.135_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1350001') TO ('1360001');

  

    CREATE TABLE "public.136_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1360001') TO ('1370001');

  

    CREATE TABLE "public.137_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1370001') TO ('1380001');

  

    CREATE TABLE "public.138_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1380001') TO ('1390001');

  

    CREATE TABLE "public.139_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1390001') TO ('1400001');

  

    CREATE TABLE "public.140_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1400001') TO ('1410001');

  

    CREATE TABLE "public.141_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1410001') TO ('1420001');

  

    CREATE TABLE "public.142_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1420001') TO ('1430001');

  

    CREATE TABLE "public.143_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1430001') TO ('1440001');

  

    CREATE TABLE "public.144_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1440001') TO ('1450001');

  

    CREATE TABLE "public.145_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1450001') TO ('1460001');

  

    CREATE TABLE "public.146_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1460001') TO ('1470001');

  

    CREATE TABLE "public.147_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1470001') TO ('1480001');

  

    CREATE TABLE "public.148_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1480001') TO ('1490001');

  

    CREATE TABLE "public.149_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1490001') TO ('1500001');

  

    CREATE TABLE "public.150_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1500001') TO ('1510001');

  

    CREATE TABLE "public.151_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1510001') TO ('1520001');

  

    CREATE TABLE "public.152_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1520001') TO ('1530001');

  

    CREATE TABLE "public.153_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1530001') TO ('1540001');

  

    CREATE TABLE "public.154_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1540001') TO ('1550001');

  

    CREATE TABLE "public.155_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1550001') TO ('1560001');

  

    CREATE TABLE "public.156_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1560001') TO ('1570001');

  

    CREATE TABLE "public.157_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1570001') TO ('1580001');

  

    CREATE TABLE "public.158_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1580001') TO ('1590001');

  

    CREATE TABLE "public.159_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1590001') TO ('1600001');

  

    CREATE TABLE "public.160_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1600001') TO ('1610001');

  

    CREATE TABLE "public.161_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1610001') TO ('1620001');

  

    CREATE TABLE "public.162_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1620001') TO ('1630001');

  

    CREATE TABLE "public.163_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1630001') TO ('1640001');

  

    CREATE TABLE "public.164_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1640001') TO ('1650001');

  

    CREATE TABLE "public.165_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1650001') TO ('1660001');

  

    CREATE TABLE "public.166_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1660001') TO ('1670001');

  

    CREATE TABLE "public.167_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1670001') TO ('1680001');

  

    CREATE TABLE "public.168_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1680001') TO ('1690001');

  

    CREATE TABLE "public.169_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1690001') TO ('1700001');

  

    CREATE TABLE "public.170_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1700001') TO ('1710001');

  

    CREATE TABLE "public.171_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1710001') TO ('1720001');

  

    CREATE TABLE "public.172_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1720001') TO ('1730001');

  

    CREATE TABLE "public.173_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1730001') TO ('1740001');

  

    CREATE TABLE "public.174_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1740001') TO ('1750001');

  

    CREATE TABLE "public.175_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1750001') TO ('1760001');

  

    CREATE TABLE "public.176_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1760001') TO ('1770001');

  

    CREATE TABLE "public.177_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1770001') TO ('1780001');

  

    CREATE TABLE "public.178_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1780001') TO ('1790001');

  

    CREATE TABLE "public.179_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1790001') TO ('1800001');

  

    CREATE TABLE "public.180_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1800001') TO ('1810001');

  

    CREATE TABLE "public.181_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1810001') TO ('1820001');

  

    CREATE TABLE "public.182_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1820001') TO ('1830001');

  

    CREATE TABLE "public.183_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1830001') TO ('1840001');

  

    CREATE TABLE "public.184_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1840001') TO ('1850001');

  

    CREATE TABLE "public.185_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1850001') TO ('1860001');

  

    CREATE TABLE "public.186_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1860001') TO ('1870001');

  

    CREATE TABLE "public.187_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1870001') TO ('1880001');

  

    CREATE TABLE "public.188_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1880001') TO ('1890001');

  

    CREATE TABLE "public.189_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1890001') TO ('1900001');

  

    CREATE TABLE "public.190_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1900001') TO ('1910001');

  

    CREATE TABLE "public.191_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1910001') TO ('1920001');

  

    CREATE TABLE "public.192_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1920001') TO ('1930001');

  

    CREATE TABLE "public.193_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1930001') TO ('1940001');

  

    CREATE TABLE "public.194_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1940001') TO ('1950001');

  

    CREATE TABLE "public.195_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1950001') TO ('1960001');

  

    CREATE TABLE "public.196_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1960001') TO ('1970001');

  

    CREATE TABLE "public.197_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1970001') TO ('1980001');

  

    CREATE TABLE "public.198_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1980001') TO ('1990001');

  

    CREATE TABLE "public.199_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('1990001') TO ('2000001');

  

    CREATE TABLE "public.200_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2000001') TO ('2010001');

  

    CREATE TABLE "public.201_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2010001') TO ('2020001');

  

    CREATE TABLE "public.202_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2020001') TO ('2030001');

  

    CREATE TABLE "public.203_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2030001') TO ('2040001');

  

    CREATE TABLE "public.204_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2040001') TO ('2050001');

  

    CREATE TABLE "public.205_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2050001') TO ('2060001');

  

    CREATE TABLE "public.206_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2060001') TO ('2070001');

  

    CREATE TABLE "public.207_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2070001') TO ('2080001');

  

    CREATE TABLE "public.208_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2080001') TO ('2090001');

  

    CREATE TABLE "public.209_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2090001') TO ('2100001');

  

    CREATE TABLE "public.210_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2100001') TO ('2110001');

  

    CREATE TABLE "public.211_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2110001') TO ('2120001');

  

    CREATE TABLE "public.212_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2120001') TO ('2130001');

  

    CREATE TABLE "public.213_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2130001') TO ('2140001');

  

    CREATE TABLE "public.214_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2140001') TO ('2150001');

  

    CREATE TABLE "public.215_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2150001') TO ('2160001');

  

    CREATE TABLE "public.216_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2160001') TO ('2170001');

  

    CREATE TABLE "public.217_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2170001') TO ('2180001');

  

    CREATE TABLE "public.218_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2180001') TO ('2190001');

  

    CREATE TABLE "public.219_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2190001') TO ('2200001');

  

    CREATE TABLE "public.220_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2200001') TO ('2210001');

  

    CREATE TABLE "public.221_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2210001') TO ('2220001');

  

    CREATE TABLE "public.222_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2220001') TO ('2230001');

  

    CREATE TABLE "public.223_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2230001') TO ('2240001');

  

    CREATE TABLE "public.224_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2240001') TO ('2250001');

  

    CREATE TABLE "public.225_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2250001') TO ('2260001');

  

    CREATE TABLE "public.226_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2260001') TO ('2270001');

  

    CREATE TABLE "public.227_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2270001') TO ('2280001');

  

    CREATE TABLE "public.228_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2280001') TO ('2290001');

  

    CREATE TABLE "public.229_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2290001') TO ('2300001');

  

    CREATE TABLE "public.230_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2300001') TO ('2310001');

  

    CREATE TABLE "public.231_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2310001') TO ('2320001');

  

    CREATE TABLE "public.232_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2320001') TO ('2330001');

  

    CREATE TABLE "public.233_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2330001') TO ('2340001');

  

    CREATE TABLE "public.234_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2340001') TO ('2350001');

  

    CREATE TABLE "public.235_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2350001') TO ('2360001');

  

    CREATE TABLE "public.236_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2360001') TO ('2370001');

  

    CREATE TABLE "public.237_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2370001') TO ('2380001');

  

    CREATE TABLE "public.238_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2380001') TO ('2390001');

  

    CREATE TABLE "public.239_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2390001') TO ('2400001');

  

    CREATE TABLE "public.240_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2400001') TO ('2410001');

  

    CREATE TABLE "public.241_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2410001') TO ('2420001');

  

    CREATE TABLE "public.242_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2420001') TO ('2430001');

  

    CREATE TABLE "public.243_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2430001') TO ('2440001');

  

    CREATE TABLE "public.244_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2440001') TO ('2450001');

  

    CREATE TABLE "public.245_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2450001') TO ('2460001');

  

    CREATE TABLE "public.246_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2460001') TO ('2470001');

  

    CREATE TABLE "public.247_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2470001') TO ('2480001');

  

    CREATE TABLE "public.248_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2480001') TO ('2490001');

  

    CREATE TABLE "public.249_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2490001') TO ('2500001');

  

    CREATE TABLE "public.250_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2500001') TO ('2510001');

  

    CREATE TABLE "public.251_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2510001') TO ('2520001');

  

    CREATE TABLE "public.252_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2520001') TO ('2530001');

  

    CREATE TABLE "public.253_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2530001') TO ('2540001');

  

    CREATE TABLE "public.254_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2540001') TO ('2550001');

  

    CREATE TABLE "public.255_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2550001') TO ('2560001');

  

    CREATE TABLE "public.256_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2560001') TO ('2570001');

  

    CREATE TABLE "public.257_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2570001') TO ('2580001');

  

    CREATE TABLE "public.258_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2580001') TO ('2590001');

  

    CREATE TABLE "public.259_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2590001') TO ('2600001');

  

    CREATE TABLE "public.260_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2600001') TO ('2610001');

  

    CREATE TABLE "public.261_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2610001') TO ('2620001');

  

    CREATE TABLE "public.262_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2620001') TO ('2630001');

  

    CREATE TABLE "public.263_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2630001') TO ('2640001');

  

    CREATE TABLE "public.264_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2640001') TO ('2650001');

  

    CREATE TABLE "public.265_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2650001') TO ('2660001');

  

    CREATE TABLE "public.266_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2660001') TO ('2670001');

  

    CREATE TABLE "public.267_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2670001') TO ('2680001');

  

    CREATE TABLE "public.268_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2680001') TO ('2690001');

  

    CREATE TABLE "public.269_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2690001') TO ('2700001');

  

    CREATE TABLE "public.270_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2700001') TO ('2710001');

  

    CREATE TABLE "public.271_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2710001') TO ('2720001');

  

    CREATE TABLE "public.273_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2730001') TO ('2740001');

  

    CREATE TABLE "public.272_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2720001') TO ('2730001');

  

    CREATE TABLE "public.274_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2740001') TO ('2750001');

  

    CREATE TABLE "public.275_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2750001') TO ('2760001');

  

    CREATE TABLE "public.276_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2760001') TO ('2770001');

  

    CREATE TABLE "public.277_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2770001') TO ('2780001');

  

    CREATE TABLE "public.278_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2780001') TO ('2790001');

  

    CREATE TABLE "public.279_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2790001') TO ('2800001');

  

    CREATE TABLE "public.280_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2800001') TO ('2810001');

  

    CREATE TABLE "public.281_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2810001') TO ('2820001');

  

    CREATE TABLE "public.282_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2820001') TO ('2830001');

  

    CREATE TABLE "public.283_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2830001') TO ('2840001');

  

    CREATE TABLE "public.284_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2840001') TO ('2850001');

  

    CREATE TABLE "public.285_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2850001') TO ('2860001');

  

    CREATE TABLE "public.286_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2860001') TO ('2870001');

  

    CREATE TABLE "public.287_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2870001') TO ('2880001');

  

    CREATE TABLE "public.288_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2880001') TO ('2890001');

  

    CREATE TABLE "public.289_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2890001') TO ('2900001');

  

    CREATE TABLE "public.290_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2900001') TO ('2910001');

  

    CREATE TABLE "public.291_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2910001') TO ('2920001');

  

    CREATE TABLE "public.292_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2920001') TO ('2930001');

  

    CREATE TABLE "public.293_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2930001') TO ('2940001');

  

    CREATE TABLE "public.294_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2940001') TO ('2950001');

  

    CREATE TABLE "public.295_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2950001') TO ('2960001');

  

    CREATE TABLE "public.296_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2960001') TO ('2970001');

  

    CREATE TABLE "public.297_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2970001') TO ('2980001');

  

    CREATE TABLE "public.298_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2980001') TO ('2990001');

  

    CREATE TABLE "public.299_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('2990001') TO ('3000001');

  

    CREATE TABLE "public.300_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3000001') TO ('3010001');

  

    CREATE TABLE "public.301_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3010001') TO ('3020001');

  

    CREATE TABLE "public.302_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3020001') TO ('3030001');

  

    CREATE TABLE "public.303_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3030001') TO ('3040001');

  

    CREATE TABLE "public.304_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3040001') TO ('3050001');

  

    CREATE TABLE "public.305_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3050001') TO ('3060001');

  

    CREATE TABLE "public.306_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3060001') TO ('3070001');

  

    CREATE TABLE "public.307_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3070001') TO ('3080001');

  

    CREATE TABLE "public.308_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3080001') TO ('3090001');

  

    CREATE TABLE "public.309_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3090001') TO ('3100001');

  

    CREATE TABLE "public.310_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3100001') TO ('3110001');

  

    CREATE TABLE "public.311_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3110001') TO ('3120001');

  

    CREATE TABLE "public.312_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3120001') TO ('3130001');

  

    CREATE TABLE "public.313_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3130001') TO ('3140001');

  

    CREATE TABLE "public.314_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3140001') TO ('3150001');

  

    CREATE TABLE "public.315_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3150001') TO ('3160001');

  

    CREATE TABLE "public.316_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3160001') TO ('3170001');

  

    CREATE TABLE "public.317_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3170001') TO ('3180001');

  

    CREATE TABLE "public.318_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3180001') TO ('3190001');

  

    CREATE TABLE "public.319_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3190001') TO ('3200001');

  

    CREATE TABLE "public.320_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3200001') TO ('3210001');

  

    CREATE TABLE "public.321_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3210001') TO ('3220001');

  

    CREATE TABLE "public.322_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3220001') TO ('3230001');

  

    CREATE TABLE "public.323_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3230001') TO ('3240001');

  

    CREATE TABLE "public.324_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3240001') TO ('3250001');

  

    CREATE TABLE "public.325_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3250001') TO ('3260001');

  

    CREATE TABLE "public.326_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3260001') TO ('3270001');

  

    CREATE TABLE "public.327_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3270001') TO ('3280001');

  

    CREATE TABLE "public.328_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3280001') TO ('3290001');

  

    CREATE TABLE "public.329_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3290001') TO ('3300001');

  

    CREATE TABLE "public.330_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3300001') TO ('3310001');

  

    CREATE TABLE "public.331_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3310001') TO ('3320001');

  

    CREATE TABLE "public.332_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3320001') TO ('3330001');

  

    CREATE TABLE "public.333_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3330001') TO ('3340001');

  

    CREATE TABLE "public.334_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3340001') TO ('3350001');

  

    CREATE TABLE "public.335_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3350001') TO ('3360001');

  

    CREATE TABLE "public.336_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3360001') TO ('3370001');

  

    CREATE TABLE "public.337_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3370001') TO ('3380001');

  

    CREATE TABLE "public.338_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3380001') TO ('3390001');

  

    CREATE TABLE "public.339_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3390001') TO ('3400001');

  

    CREATE TABLE "public.340_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3400001') TO ('3410001');

  

    CREATE TABLE "public.341_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3410001') TO ('3420001');

  

    CREATE TABLE "public.342_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3420001') TO ('3430001');

  

    CREATE TABLE "public.343_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3430001') TO ('3440001');

  

    CREATE TABLE "public.344_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3440001') TO ('3450001');

  

    CREATE TABLE "public.345_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3450001') TO ('3460001');

  

    CREATE TABLE "public.346_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3460001') TO ('3470001');

  

    CREATE TABLE "public.347_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3470001') TO ('3480001');

  

    CREATE TABLE "public.348_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3480001') TO ('3490001');

  

    CREATE TABLE "public.349_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3490001') TO ('3500001');

  

    CREATE TABLE "public.350_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3500001') TO ('3510001');

  

    CREATE TABLE "public.351_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3510001') TO ('3520001');

  

    CREATE TABLE "public.352_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3520001') TO ('3530001');

  

    CREATE TABLE "public.353_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3530001') TO ('3540001');

  

    CREATE TABLE "public.355_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3550001') TO ('3560001');

  

    CREATE TABLE "public.354_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3540001') TO ('3550001');

  

    CREATE TABLE "public.356_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3560001') TO ('3570001');

  

    CREATE TABLE "public.357_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3570001') TO ('3580001');

  

    CREATE TABLE "public.358_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3580001') TO ('3590001');

  

    CREATE TABLE "public.359_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3590001') TO ('3600001');

  

    CREATE TABLE "public.360_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3600001') TO ('3610001');

  

    CREATE TABLE "public.361_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3610001') TO ('3620001');

  

    CREATE TABLE "public.362_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3620001') TO ('3630001');

  

    CREATE TABLE "public.363_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3630001') TO ('3640001');

  

    CREATE TABLE "public.364_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3640001') TO ('3650001');

  

    CREATE TABLE "public.365_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3650001') TO ('3660001');

  

    CREATE TABLE "public.366_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3660001') TO ('3670001');

  

    CREATE TABLE "public.367_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3670001') TO ('3680001');

  

    CREATE TABLE "public.368_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3680001') TO ('3690001');

  

    CREATE TABLE "public.369_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3690001') TO ('3700001');

  

    CREATE TABLE "public.370_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3700001') TO ('3710001');

  

    CREATE TABLE "public.371_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3710001') TO ('3720001');

  

    CREATE TABLE "public.372_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3720001') TO ('3730001');

  

    CREATE TABLE "public.373_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3730001') TO ('3740001');

  

    CREATE TABLE "public.374_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3740001') TO ('3750001');

  

    CREATE TABLE "public.375_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3750001') TO ('3760001');

  

    CREATE TABLE "public.376_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3760001') TO ('3770001');

  

    CREATE TABLE "public.377_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3770001') TO ('3780001');

  

    CREATE TABLE "public.378_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3780001') TO ('3790001');

  

    CREATE TABLE "public.379_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3790001') TO ('3800001');

  

    CREATE TABLE "public.380_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3800001') TO ('3810001');

  

    CREATE TABLE "public.381_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3810001') TO ('3820001');

  

    CREATE TABLE "public.382_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3820001') TO ('3830001');

  

    CREATE TABLE "public.383_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3830001') TO ('3840001');

  

    CREATE TABLE "public.384_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3840001') TO ('3850001');

  

    CREATE TABLE "public.385_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3850001') TO ('3860001');

  

    CREATE TABLE "public.386_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3860001') TO ('3870001');

  

    CREATE TABLE "public.387_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3870001') TO ('3880001');

  

    CREATE TABLE "public.388_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3880001') TO ('3890001');

  

    CREATE TABLE "public.389_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3890001') TO ('3900001');

  

    CREATE TABLE "public.390_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3900001') TO ('3910001');

  

    CREATE TABLE "public.391_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3910001') TO ('3920001');

  

    CREATE TABLE "public.392_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3920001') TO ('3930001');

  

    CREATE TABLE "public.394_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3940001') TO ('3950001');

  

    CREATE TABLE "public.393_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3930001') TO ('3940001');

  

    CREATE TABLE "public.395_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3950001') TO ('3960001');

  

    CREATE TABLE "public.396_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3960001') TO ('3970001');

  

    CREATE TABLE "public.397_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3970001') TO ('3980001');

  

    CREATE TABLE "public.398_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3980001') TO ('3990001');

  

    CREATE TABLE "public.399_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('3990001') TO ('4000001');

  

    CREATE TABLE "public.400_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4000001') TO ('4010001');

  

    CREATE TABLE "public.401_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4010001') TO ('4020001');

  

    CREATE TABLE "public.402_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4020001') TO ('4030001');

  

    CREATE TABLE "public.403_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4030001') TO ('4040001');

  

    CREATE TABLE "public.404_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4040001') TO ('4050001');

  

    CREATE TABLE "public.405_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4050001') TO ('4060001');

  

    CREATE TABLE "public.406_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4060001') TO ('4070001');

  

    CREATE TABLE "public.407_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4070001') TO ('4080001');

  

    CREATE TABLE "public.408_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4080001') TO ('4090001');

  

    CREATE TABLE "public.409_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4090001') TO ('4100001');

  

    CREATE TABLE "public.410_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4100001') TO ('4110001');

  

    CREATE TABLE "public.411_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4110001') TO ('4120001');

  

    CREATE TABLE "public.412_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4120001') TO ('4130001');

  

    CREATE TABLE "public.413_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4130001') TO ('4140001');

  

    CREATE TABLE "public.414_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4140001') TO ('4150001');

  

    CREATE TABLE "public.415_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4150001') TO ('4160001');

  

    CREATE TABLE "public.416_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4160001') TO ('4170001');

  

    CREATE TABLE "public.417_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4170001') TO ('4180001');

  

    CREATE TABLE "public.418_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4180001') TO ('4190001');

  

    CREATE TABLE "public.419_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4190001') TO ('4200001');

  

    CREATE TABLE "public.420_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4200001') TO ('4210001');

  

    CREATE TABLE "public.421_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4210001') TO ('4220001');

  

    CREATE TABLE "public.422_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4220001') TO ('4230001');

  

    CREATE TABLE "public.423_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4230001') TO ('4240001');

  

    CREATE TABLE "public.424_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4240001') TO ('4250001');

  

    CREATE TABLE "public.425_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4250001') TO ('4260001');

  

    CREATE TABLE "public.426_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4260001') TO ('4270001');

  

    CREATE TABLE "public.427_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4270001') TO ('4280001');

  

    CREATE TABLE "public.428_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4280001') TO ('4290001');

  

    CREATE TABLE "public.429_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4290001') TO ('4300001');

  

    CREATE TABLE "public.430_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4300001') TO ('4310001');

  

    CREATE TABLE "public.431_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4310001') TO ('4320001');

  

    CREATE TABLE "public.432_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4320001') TO ('4330001');

  

    CREATE TABLE "public.433_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4330001') TO ('4340001');

  

    CREATE TABLE "public.434_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4340001') TO ('4350001');

  

    CREATE TABLE "public.435_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4350001') TO ('4360001');

  

    CREATE TABLE "public.436_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4360001') TO ('4370001');

  

    CREATE TABLE "public.437_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4370001') TO ('4380001');

  

    CREATE TABLE "public.438_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4380001') TO ('4390001');

  

    CREATE TABLE "public.439_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4390001') TO ('4400001');

  

    CREATE TABLE "public.440_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4400001') TO ('4410001');

  

    CREATE TABLE "public.441_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4410001') TO ('4420001');

  

    CREATE TABLE "public.442_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4420001') TO ('4430001');

  

    CREATE TABLE "public.443_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4430001') TO ('4440001');

  

    CREATE TABLE "public.444_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4440001') TO ('4450001');

  

    CREATE TABLE "public.445_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4450001') TO ('4460001');

  

    CREATE TABLE "public.446_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4460001') TO ('4470001');

  

    CREATE TABLE "public.448_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4480001') TO ('4490001');

  

    CREATE TABLE "public.447_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4470001') TO ('4480001');

  

    CREATE TABLE "public.449_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4490001') TO ('4500001');

  

    CREATE TABLE "public.450_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4500001') TO ('4510001');

  

    CREATE TABLE "public.451_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4510001') TO ('4520001');

  

    CREATE TABLE "public.452_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4520001') TO ('4530001');

  

    CREATE TABLE "public.453_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4530001') TO ('4540001');

  

    CREATE TABLE "public.454_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4540001') TO ('4550001');

  

    CREATE TABLE "public.455_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4550001') TO ('4560001');

  

    CREATE TABLE "public.456_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4560001') TO ('4570001');

  

    CREATE TABLE "public.457_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4570001') TO ('4580001');

  

    CREATE TABLE "public.458_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4580001') TO ('4590001');

  

    CREATE TABLE "public.459_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4590001') TO ('4600001');

  

    CREATE TABLE "public.460_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4600001') TO ('4610001');

  

    CREATE TABLE "public.461_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4610001') TO ('4620001');

  

    CREATE TABLE "public.462_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4620001') TO ('4630001');

  

    CREATE TABLE "public.463_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4630001') TO ('4640001');

  

    CREATE TABLE "public.464_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4640001') TO ('4650001');

  

    CREATE TABLE "public.465_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4650001') TO ('4660001');

  

    CREATE TABLE "public.466_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4660001') TO ('4670001');

  

    CREATE TABLE "public.467_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4670001') TO ('4680001');

  

    CREATE TABLE "public.468_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4680001') TO ('4690001');

  

    CREATE TABLE "public.469_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4690001') TO ('4700001');

  

    CREATE TABLE "public.470_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4700001') TO ('4710001');

  

    CREATE TABLE "public.471_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4710001') TO ('4720001');

  

    CREATE TABLE "public.472_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4720001') TO ('4730001');

  

    CREATE TABLE "public.473_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4730001') TO ('4740001');

  

    CREATE TABLE "public.474_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4740001') TO ('4750001');

  

    CREATE TABLE "public.475_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4750001') TO ('4760001');

  

    CREATE TABLE "public.476_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4760001') TO ('4770001');

  

    CREATE TABLE "public.477_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4770001') TO ('4780001');

  

    CREATE TABLE "public.478_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4780001') TO ('4790001');

  

    CREATE TABLE "public.479_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4790001') TO ('4800001');

  

    CREATE TABLE "public.480_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4800001') TO ('4810001');

  

    CREATE TABLE "public.481_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4810001') TO ('4820001');

  

    CREATE TABLE "public.482_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4820001') TO ('4830001');

  

    CREATE TABLE "public.483_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4830001') TO ('4840001');

  

    CREATE TABLE "public.484_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4840001') TO ('4850001');

  

    CREATE TABLE "public.485_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4850001') TO ('4860001');

  

    CREATE TABLE "public.486_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4860001') TO ('4870001');

  

    CREATE TABLE "public.487_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4870001') TO ('4880001');

  

    CREATE TABLE "public.488_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4880001') TO ('4890001');

  

    CREATE TABLE "public.489_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4890001') TO ('4900001');

  

    CREATE TABLE "public.490_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4900001') TO ('4910001');

  

    CREATE TABLE "public.491_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4910001') TO ('4920001');

  

    CREATE TABLE "public.492_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4920001') TO ('4930001');

  

    CREATE TABLE "public.493_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4930001') TO ('4940001');

  

    CREATE TABLE "public.494_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4940001') TO ('4950001');

  

    CREATE TABLE "public.495_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4950001') TO ('4960001');

  

    CREATE TABLE "public.496_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4960001') TO ('4970001');

  

    CREATE TABLE "public.497_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4970001') TO ('4980001');

  

    CREATE TABLE "public.498_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4980001') TO ('4990001');

  

    CREATE TABLE "public.499_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('4990001') TO ('5000001');

  

    CREATE TABLE "public.500_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5000001') TO ('5010001');

  

    CREATE TABLE "public.501_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5010001') TO ('5020001');

  

    CREATE TABLE "public.502_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5020001') TO ('5030001');

  

    CREATE TABLE "public.503_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5030001') TO ('5040001');

  

    CREATE TABLE "public.504_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5040001') TO ('5050001');

  

    CREATE TABLE "public.505_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5050001') TO ('5060001');

  

    CREATE TABLE "public.506_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5060001') TO ('5070001');

  

    CREATE TABLE "public.507_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5070001') TO ('5080001');

  

    CREATE TABLE "public.508_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5080001') TO ('5090001');

  

    CREATE TABLE "public.509_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5090001') TO ('5100001');

  

    CREATE TABLE "public.510_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5100001') TO ('5110001');

  

    CREATE TABLE "public.511_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5110001') TO ('5120001');

  

    CREATE TABLE "public.512_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5120001') TO ('5130001');

  

    CREATE TABLE "public.513_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5130001') TO ('5140001');

  

    CREATE TABLE "public.514_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5140001') TO ('5150001');

  

    CREATE TABLE "public.515_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5150001') TO ('5160001');

  

    CREATE TABLE "public.516_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5160001') TO ('5170001');

  

    CREATE TABLE "public.517_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5170001') TO ('5180001');

  

    CREATE TABLE "public.518_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5180001') TO ('5190001');

  

    CREATE TABLE "public.519_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5190001') TO ('5200001');

  

    CREATE TABLE "public.520_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5200001') TO ('5210001');

  

    CREATE TABLE "public.521_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5210001') TO ('5220001');

  

    CREATE TABLE "public.522_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5220001') TO ('5230001');

  

    CREATE TABLE "public.523_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5230001') TO ('5240001');

  

    CREATE TABLE "public.524_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5240001') TO ('5250001');

  

    CREATE TABLE "public.525_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5250001') TO ('5260001');

  

    CREATE TABLE "public.526_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5260001') TO ('5270001');

  

    CREATE TABLE "public.527_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5270001') TO ('5280001');

  

    CREATE TABLE "public.528_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5280001') TO ('5290001');

  

    CREATE TABLE "public.529_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5290001') TO ('5300001');

  

    CREATE TABLE "public.530_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5300001') TO ('5310001');

  

    CREATE TABLE "public.531_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5310001') TO ('5320001');

  

    CREATE TABLE "public.532_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5320001') TO ('5330001');

  

    CREATE TABLE "public.533_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5330001') TO ('5340001');

  

    CREATE TABLE "public.534_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5340001') TO ('5350001');

  

    CREATE TABLE "public.535_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5350001') TO ('5360001');

  

    CREATE TABLE "public.536_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5360001') TO ('5370001');

  

    CREATE TABLE "public.537_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5370001') TO ('5380001');

  

    CREATE TABLE "public.538_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5380001') TO ('5390001');

  

    CREATE TABLE "public.539_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5390001') TO ('5400001');

  

    CREATE TABLE "public.540_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5400001') TO ('5410001');

  

    CREATE TABLE "public.541_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5410001') TO ('5420001');

  

    CREATE TABLE "public.542_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5420001') TO ('5430001');

  

    CREATE TABLE "public.543_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5430001') TO ('5440001');

  

    CREATE TABLE "public.544_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5440001') TO ('5450001');

  

    CREATE TABLE "public.545_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5450001') TO ('5460001');

  

    CREATE TABLE "public.546_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5460001') TO ('5470001');

  

    CREATE TABLE "public.547_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5470001') TO ('5480001');

  

    CREATE TABLE "public.548_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5480001') TO ('5490001');

  

    CREATE TABLE "public.549_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5490001') TO ('5500001');

  

    CREATE TABLE "public.550_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5500001') TO ('5510001');

  

    CREATE TABLE "public.551_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5510001') TO ('5520001');

  

    CREATE TABLE "public.552_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5520001') TO ('5530001');

  

    CREATE TABLE "public.553_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5530001') TO ('5540001');

  

    CREATE TABLE "public.554_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5540001') TO ('5550001');

  

    CREATE TABLE "public.555_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5550001') TO ('5560001');

  

    CREATE TABLE "public.556_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5560001') TO ('5570001');

  

    CREATE TABLE "public.557_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5570001') TO ('5580001');

  

    CREATE TABLE "public.558_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5580001') TO ('5590001');

  

    CREATE TABLE "public.559_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5590001') TO ('5600001');

  

    CREATE TABLE "public.560_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5600001') TO ('5610001');

  

    CREATE TABLE "public.561_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5610001') TO ('5620001');

  

    CREATE TABLE "public.562_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5620001') TO ('5630001');

  

    CREATE TABLE "public.563_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5630001') TO ('5640001');

  

    CREATE TABLE "public.564_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5640001') TO ('5650001');

  

    CREATE TABLE "public.565_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5650001') TO ('5660001');

  

    CREATE TABLE "public.566_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5660001') TO ('5670001');

  

    CREATE TABLE "public.567_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5670001') TO ('5680001');

  

    CREATE TABLE "public.568_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5680001') TO ('5690001');

  

    CREATE TABLE "public.569_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5690001') TO ('5700001');

  

    CREATE TABLE "public.570_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5700001') TO ('5710001');

  

    CREATE TABLE "public.571_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5710001') TO ('5720001');

  

    CREATE TABLE "public.572_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5720001') TO ('5730001');

  

    CREATE TABLE "public.573_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5730001') TO ('5740001');

  

    CREATE TABLE "public.574_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5740001') TO ('5750001');

  

    CREATE TABLE "public.575_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5750001') TO ('5760001');

  

    CREATE TABLE "public.576_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5760001') TO ('5770001');

  

    CREATE TABLE "public.577_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5770001') TO ('5780001');

  

    CREATE TABLE "public.578_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5780001') TO ('5790001');

  

    CREATE TABLE "public.579_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5790001') TO ('5800001');

  

    CREATE TABLE "public.580_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5800001') TO ('5810001');

  

    CREATE TABLE "public.581_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5810001') TO ('5820001');

  

    CREATE TABLE "public.582_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5820001') TO ('5830001');

  

    CREATE TABLE "public.583_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5830001') TO ('5840001');

  

    CREATE TABLE "public.584_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5840001') TO ('5850001');

  

    CREATE TABLE "public.585_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5850001') TO ('5860001');

  

    CREATE TABLE "public.586_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5860001') TO ('5870001');

  

    CREATE TABLE "public.587_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5870001') TO ('5880001');

  

    CREATE TABLE "public.588_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5880001') TO ('5890001');

  

    CREATE TABLE "public.589_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5890001') TO ('5900001');

  

    CREATE TABLE "public.590_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5900001') TO ('5910001');

  

    CREATE TABLE "public.591_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5910001') TO ('5920001');

  

    CREATE TABLE "public.592_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5920001') TO ('5930001');

  

    CREATE TABLE "public.593_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5930001') TO ('5940001');

  

    CREATE TABLE "public.594_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5940001') TO ('5950001');

  

    CREATE TABLE "public.595_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5950001') TO ('5960001');

  

    CREATE TABLE "public.596_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5960001') TO ('5970001');

  

    CREATE TABLE "public.597_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5970001') TO ('5980001');

  

    CREATE TABLE "public.598_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5980001') TO ('5990001');

  

    CREATE TABLE "public.599_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('5990001') TO ('6000001');

  

    CREATE TABLE "public.600_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6000001') TO ('6010001');

  

    CREATE TABLE "public.601_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6010001') TO ('6020001');

  

    CREATE TABLE "public.602_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6020001') TO ('6030001');

  

    CREATE TABLE "public.603_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6030001') TO ('6040001');

  

    CREATE TABLE "public.604_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6040001') TO ('6050001');

  

    CREATE TABLE "public.605_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6050001') TO ('6060001');

  

    CREATE TABLE "public.606_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6060001') TO ('6070001');

  

    CREATE TABLE "public.607_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6070001') TO ('6080001');

  

    CREATE TABLE "public.608_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6080001') TO ('6090001');

  

    CREATE TABLE "public.609_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6090001') TO ('6100001');

  

    CREATE TABLE "public.610_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6100001') TO ('6110001');

  

    CREATE TABLE "public.611_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6110001') TO ('6120001');

  

    CREATE TABLE "public.612_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6120001') TO ('6130001');

  

    CREATE TABLE "public.613_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6130001') TO ('6140001');

  

    CREATE TABLE "public.614_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6140001') TO ('6150001');

  

    CREATE TABLE "public.615_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6150001') TO ('6160001');

  

    CREATE TABLE "public.616_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6160001') TO ('6170001');

  

    CREATE TABLE "public.617_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6170001') TO ('6180001');

  

    CREATE TABLE "public.618_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6180001') TO ('6190001');

  

    CREATE TABLE "public.619_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6190001') TO ('6200001');

  

    CREATE TABLE "public.620_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6200001') TO ('6210001');

  

    CREATE TABLE "public.621_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6210001') TO ('6220001');

  

    CREATE TABLE "public.622_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6220001') TO ('6230001');

  

    CREATE TABLE "public.623_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6230001') TO ('6240001');

  

    CREATE TABLE "public.624_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6240001') TO ('6250001');

  

    CREATE TABLE "public.625_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6250001') TO ('6260001');

  

    CREATE TABLE "public.626_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6260001') TO ('6270001');

  

    CREATE TABLE "public.627_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6270001') TO ('6280001');

  

    CREATE TABLE "public.628_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6280001') TO ('6290001');

  

    CREATE TABLE "public.629_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6290001') TO ('6300001');

  

    CREATE TABLE "public.630_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6300001') TO ('6310001');

  

    CREATE TABLE "public.631_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6310001') TO ('6320001');

  

    CREATE TABLE "public.632_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6320001') TO ('6330001');

  

    CREATE TABLE "public.633_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6330001') TO ('6340001');

  

    CREATE TABLE "public.634_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6340001') TO ('6350001');

  

    CREATE TABLE "public.635_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6350001') TO ('6360001');

  

    CREATE TABLE "public.636_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6360001') TO ('6370001');

  

    CREATE TABLE "public.637_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6370001') TO ('6380001');

  

    CREATE TABLE "public.638_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6380001') TO ('6390001');

  

    CREATE TABLE "public.639_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6390001') TO ('6400001');

  

    CREATE TABLE "public.640_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6400001') TO ('6410001');

  

    CREATE TABLE "public.641_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6410001') TO ('6420001');

  

    CREATE TABLE "public.642_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6420001') TO ('6430001');

  

    CREATE TABLE "public.643_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6430001') TO ('6440001');

  

    CREATE TABLE "public.644_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6440001') TO ('6450001');

  

    CREATE TABLE "public.645_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6450001') TO ('6460001');

  

    CREATE TABLE "public.646_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6460001') TO ('6470001');

  

    CREATE TABLE "public.647_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6470001') TO ('6480001');

  

    CREATE TABLE "public.648_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6480001') TO ('6490001');

  

    CREATE TABLE "public.649_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6490001') TO ('6500001');

  

    CREATE TABLE "public.650_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6500001') TO ('6510001');

  

    CREATE TABLE "public.651_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6510001') TO ('6520001');

  

    CREATE TABLE "public.652_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6520001') TO ('6530001');

  

    CREATE TABLE "public.653_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6530001') TO ('6540001');

  

    CREATE TABLE "public.654_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6540001') TO ('6550001');

  

    CREATE TABLE "public.655_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6550001') TO ('6560001');

  

    CREATE TABLE "public.656_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6560001') TO ('6570001');

  

    CREATE TABLE "public.657_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6570001') TO ('6580001');

  

    CREATE TABLE "public.658_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6580001') TO ('6590001');

  

    CREATE TABLE "public.659_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6590001') TO ('6600001');

  

    CREATE TABLE "public.660_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6600001') TO ('6610001');

  

    CREATE TABLE "public.661_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6610001') TO ('6620001');

  

    CREATE TABLE "public.662_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6620001') TO ('6630001');

  

    CREATE TABLE "public.663_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6630001') TO ('6640001');

  

    CREATE TABLE "public.664_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6640001') TO ('6650001');

  

    CREATE TABLE "public.665_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6650001') TO ('6660001');

  

    CREATE TABLE "public.666_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6660001') TO ('6670001');

  

    CREATE TABLE "public.667_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6670001') TO ('6680001');

  

    CREATE TABLE "public.668_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6680001') TO ('6690001');

  

    CREATE TABLE "public.669_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6690001') TO ('6700001');

  

    CREATE TABLE "public.670_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6700001') TO ('6710001');

  

    CREATE TABLE "public.671_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6710001') TO ('6720001');

  

    CREATE TABLE "public.672_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6720001') TO ('6730001');

  

    CREATE TABLE "public.673_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6730001') TO ('6740001');

  

    CREATE TABLE "public.674_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6740001') TO ('6750001');

  

    CREATE TABLE "public.675_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6750001') TO ('6760001');

  

    CREATE TABLE "public.676_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6760001') TO ('6770001');

  

    CREATE TABLE "public.677_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6770001') TO ('6780001');

  

    CREATE TABLE "public.678_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6780001') TO ('6790001');

  

    CREATE TABLE "public.679_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6790001') TO ('6800001');

  

    CREATE TABLE "public.680_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6800001') TO ('6810001');

  

    CREATE TABLE "public.681_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6810001') TO ('6820001');

  

    CREATE TABLE "public.682_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6820001') TO ('6830001');

  

    CREATE TABLE "public.683_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6830001') TO ('6840001');

  

    CREATE TABLE "public.684_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6840001') TO ('6850001');

  

    CREATE TABLE "public.685_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6850001') TO ('6860001');

  

    CREATE TABLE "public.686_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6860001') TO ('6870001');

  

    CREATE TABLE "public.687_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6870001') TO ('6880001');

  

    CREATE TABLE "public.688_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6880001') TO ('6890001');

  

    CREATE TABLE "public.689_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6890001') TO ('6900001');

  

    CREATE TABLE "public.690_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6900001') TO ('6910001');

  

    CREATE TABLE "public.691_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6910001') TO ('6920001');

  

    CREATE TABLE "public.692_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6920001') TO ('6930001');

  

    CREATE TABLE "public.693_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6930001') TO ('6940001');

  

    CREATE TABLE "public.694_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6940001') TO ('6950001');

  

    CREATE TABLE "public.695_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6950001') TO ('6960001');

  

    CREATE TABLE "public.696_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6960001') TO ('6970001');

  

    CREATE TABLE "public.697_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6970001') TO ('6980001');

  

    CREATE TABLE "public.698_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6980001') TO ('6990001');

  

    CREATE TABLE "public.699_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('6990001') TO ('7000001');

  

    CREATE TABLE "public.700_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7000001') TO ('7010001');

  

    CREATE TABLE "public.701_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7010001') TO ('7020001');

  

    CREATE TABLE "public.702_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7020001') TO ('7030001');

  

    CREATE TABLE "public.703_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7030001') TO ('7040001');

  

    CREATE TABLE "public.704_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7040001') TO ('7050001');

  

    CREATE TABLE "public.705_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7050001') TO ('7060001');

  

    CREATE TABLE "public.706_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7060001') TO ('7070001');

  

    CREATE TABLE "public.707_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7070001') TO ('7080001');

  

    CREATE TABLE "public.708_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7080001') TO ('7090001');

  

    CREATE TABLE "public.709_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7090001') TO ('7100001');

  

    CREATE TABLE "public.710_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7100001') TO ('7110001');

  

    CREATE TABLE "public.711_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7110001') TO ('7120001');

  

    CREATE TABLE "public.712_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7120001') TO ('7130001');

  

    CREATE TABLE "public.713_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7130001') TO ('7140001');

  

    CREATE TABLE "public.714_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7140001') TO ('7150001');

  

    CREATE TABLE "public.715_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7150001') TO ('7160001');

  

    CREATE TABLE "public.716_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7160001') TO ('7170001');

  

    CREATE TABLE "public.717_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7170001') TO ('7180001');

  

    CREATE TABLE "public.718_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7180001') TO ('7190001');

  

    CREATE TABLE "public.719_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7190001') TO ('7200001');

  

    CREATE TABLE "public.720_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7200001') TO ('7210001');

  

    CREATE TABLE "public.721_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7210001') TO ('7220001');

  

    CREATE TABLE "public.722_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7220001') TO ('7230001');

  

    CREATE TABLE "public.723_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7230001') TO ('7240001');

  

    CREATE TABLE "public.724_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7240001') TO ('7250001');

  

    CREATE TABLE "public.725_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7250001') TO ('7260001');

  

    CREATE TABLE "public.726_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7260001') TO ('7270001');

  

    CREATE TABLE "public.727_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7270001') TO ('7280001');

  

    CREATE TABLE "public.728_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7280001') TO ('7290001');

  

    CREATE TABLE "public.729_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7290001') TO ('7300001');

  

    CREATE TABLE "public.730_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7300001') TO ('7310001');

  

    CREATE TABLE "public.731_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7310001') TO ('7320001');

  

    CREATE TABLE "public.732_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7320001') TO ('7330001');

  

    CREATE TABLE "public.733_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7330001') TO ('7340001');

  

    CREATE TABLE "public.734_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7340001') TO ('7350001');

  

    CREATE TABLE "public.735_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7350001') TO ('7360001');

  

    CREATE TABLE "public.736_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7360001') TO ('7370001');

  

    CREATE TABLE "public.737_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7370001') TO ('7380001');

  

    CREATE TABLE "public.738_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7380001') TO ('7390001');

  

    CREATE TABLE "public.739_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7390001') TO ('7400001');

  

    CREATE TABLE "public.740_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7400001') TO ('7410001');

  

    CREATE TABLE "public.741_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7410001') TO ('7420001');

  

    CREATE TABLE "public.742_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7420001') TO ('7430001');

  

    CREATE TABLE "public.743_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7430001') TO ('7440001');

  

    CREATE TABLE "public.744_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7440001') TO ('7450001');

  

    CREATE TABLE "public.745_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7450001') TO ('7460001');

  

    CREATE TABLE "public.746_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7460001') TO ('7470001');

  

    CREATE TABLE "public.747_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7470001') TO ('7480001');

  

    CREATE TABLE "public.748_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7480001') TO ('7490001');

  

    CREATE TABLE "public.749_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7490001') TO ('7500001');

  

    CREATE TABLE "public.750_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7500001') TO ('7510001');

  

    CREATE TABLE "public.751_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7510001') TO ('7520001');

  

    CREATE TABLE "public.752_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7520001') TO ('7530001');

  

    CREATE TABLE "public.753_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7530001') TO ('7540001');

  

    CREATE TABLE "public.754_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7540001') TO ('7550001');

  

    CREATE TABLE "public.755_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7550001') TO ('7560001');

  

    CREATE TABLE "public.756_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7560001') TO ('7570001');

  

    CREATE TABLE "public.757_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7570001') TO ('7580001');

  

    CREATE TABLE "public.758_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7580001') TO ('7590001');

  

    CREATE TABLE "public.759_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7590001') TO ('7600001');

  

    CREATE TABLE "public.760_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7600001') TO ('7610001');

  

    CREATE TABLE "public.761_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7610001') TO ('7620001');

  

    CREATE TABLE "public.762_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7620001') TO ('7630001');

  

    CREATE TABLE "public.763_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7630001') TO ('7640001');

  

    CREATE TABLE "public.764_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7640001') TO ('7650001');

  

    CREATE TABLE "public.765_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7650001') TO ('7660001');

  

    CREATE TABLE "public.766_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7660001') TO ('7670001');

  

    CREATE TABLE "public.767_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7670001') TO ('7680001');

  

    CREATE TABLE "public.768_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7680001') TO ('7690001');

  

    CREATE TABLE "public.769_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7690001') TO ('7700001');

  

    CREATE TABLE "public.770_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7700001') TO ('7710001');

  

    CREATE TABLE "public.771_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7710001') TO ('7720001');

  

    CREATE TABLE "public.772_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7720001') TO ('7730001');

  

    CREATE TABLE "public.773_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7730001') TO ('7740001');

  

    CREATE TABLE "public.774_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7740001') TO ('7750001');

  

    CREATE TABLE "public.775_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7750001') TO ('7760001');

  

    CREATE TABLE "public.776_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7760001') TO ('7770001');

  

    CREATE TABLE "public.777_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7770001') TO ('7780001');

  

    CREATE TABLE "public.778_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7780001') TO ('7790001');

  

    CREATE TABLE "public.779_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7790001') TO ('7800001');

  

    CREATE TABLE "public.780_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7800001') TO ('7810001');

  

    CREATE TABLE "public.781_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7810001') TO ('7820001');

  

    CREATE TABLE "public.782_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7820001') TO ('7830001');

  

    CREATE TABLE "public.783_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7830001') TO ('7840001');

  

    CREATE TABLE "public.784_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7840001') TO ('7850001');

  

    CREATE TABLE "public.785_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7850001') TO ('7860001');

  

    CREATE TABLE "public.786_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7860001') TO ('7870001');

  

    CREATE TABLE "public.787_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7870001') TO ('7880001');

  

    CREATE TABLE "public.788_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7880001') TO ('7890001');

  

    CREATE TABLE "public.789_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7890001') TO ('7900001');

  

    CREATE TABLE "public.793_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7930001') TO ('7940001');

  

    CREATE TABLE "public.794_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7940001') TO ('7950001');

  

    CREATE TABLE "public.795_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7950001') TO ('7960001');

  

    CREATE TABLE "public.796_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7960001') TO ('7970001');

  

    CREATE TABLE "public.792_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7920001') TO ('7930001');

  

    CREATE TABLE "public.797_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7970001') TO ('7980001');

  

    CREATE TABLE "public.790_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7900001') TO ('7910001');

  

    CREATE TABLE "public.798_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7980001') TO ('7990001');

  

    CREATE TABLE "public.791_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7910001') TO ('7920001');

  

    CREATE TABLE "public.799_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('7990001') TO ('8000001');

  

    CREATE TABLE "public.801_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8010001') TO ('8020001');

  

    CREATE TABLE "public.800_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8000001') TO ('8010001');

  

    CREATE TABLE "public.803_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8030001') TO ('8040001');

  

    CREATE TABLE "public.804_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8040001') TO ('8050001');

  

    CREATE TABLE "public.802_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8020001') TO ('8030001');

  

    CREATE TABLE "public.805_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8050001') TO ('8060001');

  

    CREATE TABLE "public.806_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8060001') TO ('8070001');

  

    CREATE TABLE "public.807_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8070001') TO ('8080001');

  

    CREATE TABLE "public.808_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8080001') TO ('8090001');

  

    CREATE TABLE "public.810_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8100001') TO ('8110001');

  

    CREATE TABLE "public.809_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8090001') TO ('8100001');

  

    CREATE TABLE "public.811_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8110001') TO ('8120001');

  

    CREATE TABLE "public.813_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8130001') TO ('8140001');

  

    CREATE TABLE "public.812_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8120001') TO ('8130001');

  

    CREATE TABLE "public.815_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8150001') TO ('8160001');

  

    CREATE TABLE "public.814_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8140001') TO ('8150001');

  

    CREATE TABLE "public.816_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8160001') TO ('8170001');

  

    CREATE TABLE "public.817_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8170001') TO ('8180001');

  

    CREATE TABLE "public.818_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8180001') TO ('8190001');

  

    CREATE TABLE "public.819_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8190001') TO ('8200001');

  

    CREATE TABLE "public.820_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8200001') TO ('8210001');

  

    CREATE TABLE "public.821_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8210001') TO ('8220001');

  

    CREATE TABLE "public.822_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8220001') TO ('8230001');

  

    CREATE TABLE "public.823_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8230001') TO ('8240001');

  

    CREATE TABLE "public.824_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8240001') TO ('8250001');

  

    CREATE TABLE "public.825_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8250001') TO ('8260001');

  

    CREATE TABLE "public.826_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8260001') TO ('8270001');

  

    CREATE TABLE "public.827_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8270001') TO ('8280001');

  

    CREATE TABLE "public.828_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8280001') TO ('8290001');

  

    CREATE TABLE "public.829_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8290001') TO ('8300001');

  

    CREATE TABLE "public.830_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8300001') TO ('8310001');

  

    CREATE TABLE "public.831_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8310001') TO ('8320001');

  

    CREATE TABLE "public.832_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8320001') TO ('8330001');

  

    CREATE TABLE "public.833_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8330001') TO ('8340001');

  

    CREATE TABLE "public.834_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8340001') TO ('8350001');

  

    CREATE TABLE "public.835_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8350001') TO ('8360001');

  

    CREATE TABLE "public.836_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8360001') TO ('8370001');

  

    CREATE TABLE "public.837_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8370001') TO ('8380001');

  

    CREATE TABLE "public.838_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8380001') TO ('8390001');

  

    CREATE TABLE "public.839_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8390001') TO ('8400001');

  

    CREATE TABLE "public.840_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8400001') TO ('8410001');

  

    CREATE TABLE "public.841_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8410001') TO ('8420001');

  

    CREATE TABLE "public.842_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8420001') TO ('8430001');

  

    CREATE TABLE "public.843_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8430001') TO ('8440001');

  

    CREATE TABLE "public.844_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8440001') TO ('8450001');

  

    CREATE TABLE "public.845_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8450001') TO ('8460001');

  

    CREATE TABLE "public.846_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8460001') TO ('8470001');

  

    CREATE TABLE "public.847_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8470001') TO ('8480001');

  

    CREATE TABLE "public.848_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8480001') TO ('8490001');

  

    CREATE TABLE "public.849_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8490001') TO ('8500001');

  

    CREATE TABLE "public.850_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8500001') TO ('8510001');

  

    CREATE TABLE "public.851_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8510001') TO ('8520001');

  

    CREATE TABLE "public.852_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8520001') TO ('8530001');

  

    CREATE TABLE "public.853_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8530001') TO ('8540001');

  

    CREATE TABLE "public.854_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8540001') TO ('8550001');

  

    CREATE TABLE "public.856_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8560001') TO ('8570001');

  

    CREATE TABLE "public.855_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8550001') TO ('8560001');

  

    CREATE TABLE "public.857_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8570001') TO ('8580001');

  

    CREATE TABLE "public.858_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8580001') TO ('8590001');

  

    CREATE TABLE "public.859_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8590001') TO ('8600001');

  

    CREATE TABLE "public.861_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8610001') TO ('8620001');

  

    CREATE TABLE "public.860_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8600001') TO ('8610001');

  

    CREATE TABLE "public.862_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8620001') TO ('8630001');

  

    CREATE TABLE "public.863_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8630001') TO ('8640001');

  

    CREATE TABLE "public.864_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8640001') TO ('8650001');

  

    CREATE TABLE "public.866_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8660001') TO ('8670001');

  

    CREATE TABLE "public.865_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8650001') TO ('8660001');

  

    CREATE TABLE "public.868_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8680001') TO ('8690001');

  

    CREATE TABLE "public.867_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8670001') TO ('8680001');

  

    CREATE TABLE "public.869_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8690001') TO ('8700001');

  

    CREATE TABLE "public.871_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8710001') TO ('8720001');

  

    CREATE TABLE "public.870_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8700001') TO ('8710001');

  

    CREATE TABLE "public.873_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8730001') TO ('8740001');

  

    CREATE TABLE "public.872_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8720001') TO ('8730001');

  

    CREATE TABLE "public.874_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8740001') TO ('8750001');

  

    CREATE TABLE "public.876_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8760001') TO ('8770001');

  

    CREATE TABLE "public.875_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8750001') TO ('8760001');

  

    CREATE TABLE "public.877_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8770001') TO ('8780001');

  

    CREATE TABLE "public.878_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8780001') TO ('8790001');

  

    CREATE TABLE "public.879_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8790001') TO ('8800001');

  

    CREATE TABLE "public.880_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8800001') TO ('8810001');

  

    CREATE TABLE "public.882_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8820001') TO ('8830001');

  

    CREATE TABLE "public.881_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8810001') TO ('8820001');

  

    CREATE TABLE "public.883_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8830001') TO ('8840001');

  

    CREATE TABLE "public.885_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8850001') TO ('8860001');

  

    CREATE TABLE "public.884_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8840001') TO ('8850001');

  

    CREATE TABLE "public.887_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8870001') TO ('8880001');

  

    CREATE TABLE "public.886_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8860001') TO ('8870001');

  

    CREATE TABLE "public.888_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8880001') TO ('8890001');

  

    CREATE TABLE "public.890_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8900001') TO ('8910001');

  

    CREATE TABLE "public.889_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8890001') TO ('8900001');

  

    CREATE TABLE "public.891_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8910001') TO ('8920001');

  

    CREATE TABLE "public.892_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8920001') TO ('8930001');

  

    CREATE TABLE "public.893_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8930001') TO ('8940001');

  

    CREATE TABLE "public.896_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8960001') TO ('8970001');

  

    CREATE TABLE "public.894_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8940001') TO ('8950001');

  

    CREATE TABLE "public.895_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8950001') TO ('8960001');

  

    CREATE TABLE "public.897_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8970001') TO ('8980001');

  

    CREATE TABLE "public.898_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8980001') TO ('8990001');

  

    CREATE TABLE "public.901_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9010001') TO ('9020001');

  

    CREATE TABLE "public.899_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('8990001') TO ('9000001');

  

    CREATE TABLE "public.900_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9000001') TO ('9010001');

  

    CREATE TABLE "public.902_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9020001') TO ('9030001');

  

    CREATE TABLE "public.903_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9030001') TO ('9040001');

  

    CREATE TABLE "public.906_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9060001') TO ('9070001');

  

    CREATE TABLE "public.905_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9050001') TO ('9060001');

  

    CREATE TABLE "public.904_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9040001') TO ('9050001');

  

    CREATE TABLE "public.907_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9070001') TO ('9080001');

  

    CREATE TABLE "public.908_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9080001') TO ('9090001');

  

    CREATE TABLE "public.909_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9090001') TO ('9100001');

  

    CREATE TABLE "public.910_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9100001') TO ('9110001');

  

    CREATE TABLE "public.911_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9110001') TO ('9120001');

  

    CREATE TABLE "public.913_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9130001') TO ('9140001');

  

    CREATE TABLE "public.912_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9120001') TO ('9130001');

  

    CREATE TABLE "public.916_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9160001') TO ('9170001');

  

    CREATE TABLE "public.915_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9150001') TO ('9160001');

  

    CREATE TABLE "public.914_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9140001') TO ('9150001');

  

    CREATE TABLE "public.918_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9180001') TO ('9190001');

  

    CREATE TABLE "public.917_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9170001') TO ('9180001');

  

    CREATE TABLE "public.919_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9190001') TO ('9200001');

  

    CREATE TABLE "public.921_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9210001') TO ('9220001');

  

    CREATE TABLE "public.920_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9200001') TO ('9210001');

  

    CREATE TABLE "public.923_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9230001') TO ('9240001');

  

    CREATE TABLE "public.922_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9220001') TO ('9230001');

  

    CREATE TABLE "public.924_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9240001') TO ('9250001');

  

    CREATE TABLE "public.926_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9260001') TO ('9270001');

  

    CREATE TABLE "public.925_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9250001') TO ('9260001');

  

    CREATE TABLE "public.927_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9270001') TO ('9280001');

  

    CREATE TABLE "public.928_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9280001') TO ('9290001');

  

    CREATE TABLE "public.929_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9290001') TO ('9300001');

  

    CREATE TABLE "public.932_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9320001') TO ('9330001');

  

    CREATE TABLE "public.930_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9300001') TO ('9310001');

  

    CREATE TABLE "public.931_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9310001') TO ('9320001');

  

    CREATE TABLE "public.933_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9330001') TO ('9340001');

  

    CREATE TABLE "public.934_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9340001') TO ('9350001');

  

    CREATE TABLE "public.936_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9360001') TO ('9370001');

  

    CREATE TABLE "public.935_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9350001') TO ('9360001');

  

    CREATE TABLE "public.938_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9380001') TO ('9390001');

  

    CREATE TABLE "public.939_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9390001') TO ('9400001');

  

    CREATE TABLE "public.937_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9370001') TO ('9380001');

  

    CREATE TABLE "public.941_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9410001') TO ('9420001');

  

    CREATE TABLE "public.940_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9400001') TO ('9410001');

  

    CREATE TABLE "public.942_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9420001') TO ('9430001');

  

    CREATE TABLE "public.943_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9430001') TO ('9440001');

  

    CREATE TABLE "public.944_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9440001') TO ('9450001');

  

    CREATE TABLE "public.945_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9450001') TO ('9460001');

  

    CREATE TABLE "public.946_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9460001') TO ('9470001');

  

    CREATE TABLE "public.947_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9470001') TO ('9480001');

  

    CREATE TABLE "public.948_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9480001') TO ('9490001');

  

    CREATE TABLE "public.949_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9490001') TO ('9500001');

  

    CREATE TABLE "public.950_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9500001') TO ('9510001');

  

    CREATE TABLE "public.951_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9510001') TO ('9520001');

  

    CREATE TABLE "public.952_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9520001') TO ('9530001');

  

    CREATE TABLE "public.953_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9530001') TO ('9540001');

  

    CREATE TABLE "public.954_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9540001') TO ('9550001');

  

    CREATE TABLE "public.955_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9550001') TO ('9560001');

  

    CREATE TABLE "public.956_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9560001') TO ('9570001');

  

    CREATE TABLE "public.957_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9570001') TO ('9580001');

  

    CREATE TABLE "public.958_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9580001') TO ('9590001');

  

    CREATE TABLE "public.959_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9590001') TO ('9600001');

  

    CREATE TABLE "public.960_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9600001') TO ('9610001');

  

    CREATE TABLE "public.961_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9610001') TO ('9620001');

  

    CREATE TABLE "public.962_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9620001') TO ('9630001');

  

    CREATE TABLE "public.963_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9630001') TO ('9640001');

  

    CREATE TABLE "public.964_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9640001') TO ('9650001');

  

    CREATE TABLE "public.965_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9650001') TO ('9660001');

  

    CREATE TABLE "public.966_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9660001') TO ('9670001');

  

    CREATE TABLE "public.967_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9670001') TO ('9680001');

  

    CREATE TABLE "public.968_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9680001') TO ('9690001');

  

    CREATE TABLE "public.969_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9690001') TO ('9700001');

  

    CREATE TABLE "public.970_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9700001') TO ('9710001');

  

    CREATE TABLE "public.971_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9710001') TO ('9720001');

  

    CREATE TABLE "public.972_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9720001') TO ('9730001');

  

    CREATE TABLE "public.973_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9730001') TO ('9740001');

  

    CREATE TABLE "public.974_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9740001') TO ('9750001');

  

    CREATE TABLE "public.975_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9750001') TO ('9760001');

  

    CREATE TABLE "public.976_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9760001') TO ('9770001');

  

    CREATE TABLE "public.977_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9770001') TO ('9780001');

  

    CREATE TABLE "public.978_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9780001') TO ('9790001');

  

    CREATE TABLE "public.979_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9790001') TO ('9800001');

  

    CREATE TABLE "public.980_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9800001') TO ('9810001');

  

    CREATE TABLE "public.981_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9810001') TO ('9820001');

  

    CREATE TABLE "public.982_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9820001') TO ('9830001');

  

    CREATE TABLE "public.984_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9840001') TO ('9850001');

  

    CREATE TABLE "public.983_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9830001') TO ('9840001');

  

    CREATE TABLE "public.985_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9850001') TO ('9860001');

  

    CREATE TABLE "public.986_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9860001') TO ('9870001');

  

    CREATE TABLE "public.988_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9880001') TO ('9890001');

  

    CREATE TABLE "public.987_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9870001') TO ('9880001');

  

    CREATE TABLE "public.989_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9890001') TO ('9900001');

  

    CREATE TABLE "public.990_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9900001') TO ('9910001');

  

    CREATE TABLE "public.991_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9910001') TO ('9920001');

  

    CREATE TABLE "public.993_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9930001') TO ('9940001');

  

    CREATE TABLE "public.992_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9920001') TO ('9930001');

  

    CREATE TABLE "public.994_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9940001') TO ('9950001');

  

    CREATE TABLE "public.995_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9950001') TO ('9960001');

  

    CREATE TABLE "public.996_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9960001') TO ('9970001');

  

    CREATE TABLE "public.997_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9970001') TO ('9980001');

  

    CREATE TABLE "public.998_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9980001') TO ('9990001');

  

    CREATE TABLE "public.999_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('9990001') TO ('10000001');

  