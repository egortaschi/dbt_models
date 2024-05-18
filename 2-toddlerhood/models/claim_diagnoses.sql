-- you realized this was repeated, and could be moved into it's own model!

select 
    claim_id,
    pos as diagnosis_number,
    icd10 as icd_10_code,
    icd10desc as icd_10_code_descrip,
    split_part(icd10, '.', 1) as parent_icd10
from {{ source('DBT_MATURITY_BILLING_DATA', 'claim_diagnosis') }}
