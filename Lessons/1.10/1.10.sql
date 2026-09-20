select job_id, job_title_short from job_postings_fact limit 10;


select
    jpf.*,
    cd.*
    from    
        job_postings_fact as jpf

    left join company_dim as cd     
        on jpf.company_id=cd.company_id
    limit 10;


select
    jpf.*,
    cd.*
    from    
        job_postings_fact as jpf

    right join company_dim as cd     
        on jpf.company_id=cd.company_id
    limit 10;


select
    jpf.*,
    cd.*
    from    
        job_postings_fact as jpf

    inner join company_dim as cd     
        on jpf.company_id=cd.company_id
    limit 10;

select
    jpf.*,
    cd.*
    from    
        job_postings_fact as jpf

    full outer join company_dim as cd     
        on jpf.company_id=cd.company_id
    limit 10;

select
    jpf.*,
    cd.*
    from    
        job_postings_fact as jpf

    left join company_dim as cd     
        on jpf.company_id=cd.company_id
    
    left join skills_dim as sd
       on  jpf.skill_id=sd.skill_id 
    limit 10;