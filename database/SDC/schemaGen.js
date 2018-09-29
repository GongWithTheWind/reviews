const fs = require('fs');

const header = `
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



`;

fs.writeFile('./schema.sql', header);

for (let i = 0; i < 1000; i += 1) {
  const partition = `

    CREATE TABLE "public.${i}_reviews" PARTITION OF public.master_04
    FOR VALUES FROM ('${1 + (i * 10000)}') TO ('${1 + ((i + 1) * 10000)}');

  `;
  fs.appendFile('./schema.sql', partition);
}
