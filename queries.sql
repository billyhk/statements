select transaction_type, property, s.statement_type, s.line_item, ut.amount * ts.sign as amount
from transactions t 
    inner join transactions_statements_bridge ts 
        on t.id = transaction_id
    inner join statements s
        on ts.statement_id = s.id
    inner join user_transactions_bridge ut
        on t.id = ut.transaction_id
where ut.user_id = 1;       






select t.statement_type, t.line_item, r.amount
from statements t
left join (
        select s.statement_type, s.line_item, sum(ut.amount * ts.sign) as amount
        from transactions t 
            inner join transactions_statements_bridge ts 
                on t.id = transaction_id
            inner join statements s
                on ts.statement_id = s.id
            inner join user_transactions_bridge ut
                on t.id = ut.transaction_id
        where ut.user_id = 1
        group by s.statement_type, s.line_item
    ) r
    on t.line_item = r.line_item
order by t.id;



# !558 && !559 && !560 && !561 && !562