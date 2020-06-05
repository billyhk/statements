\*\* NEW ISSUE COMMON STOCK

api/transaction/new

```
{
  "issue_common_stock": {
    "transactionDate": "01/01/2020",
    "accountingDate": "01/01/2020",
    "capital": 50000,
    "description": "some description text"
  }
}
```

\*\* NEW SALARY AND EMPLOYMENT EXPENSES

api/transaction/new

```
{
  "salary_and_employment_expenses": {
    "transactionDate": "02/15/2020",
    "accountingDate": "02/01/2020",
    "salary_paid_general_and_administrative": 3370,
    "employment_expenses_accrued_general_and_administrative": 3370,
    "salary_paid_sales_and_marketing": 0,
    "employment_expenses_accrued_sales_and_marketing": 0,
    "description": "some description text"
  }
}
```

\*\* NEW BORROW (take out loan)

api/transaction/new

```
{
  "borrow": {
    "transactionDate": "03/15/2020",
    "accountingDate": "03/01/2020",
    "loan_amount": 1000000,
    "current_debt": 100000,
    "long_term_debt": 900000,
    "description": "some description text"
  }
}
```

\*\* NEW PURCHASE PPE (plant property & equipment)

api/transaction/new

```
{
  "purchase_ppe": {
    "transactionDate": "04/15/2020",
    "accountingDate": "04/01/2020",
    "cost_of_ppe": 1500000,
    "description": "some description text"
  }
}
```

\*\* NEW PAY ACCRUED EXPENSES

api/transaction/new

```
{
  "purchase_ppe": {
    "transactionDate": "05/15/2020",
    "accountingDate": "05/01/2020",
    "accrued_expenses_paid": 9690,
    "description": "some description text"
  }
}
```

\*\* RETRIEVE INCOME STATEMENT

api/statement/income_statement?start=20200101&end=20200601 (dates inclusive)

```
{
  "net_sales": 0,
  "cost_of_goods_sold": 0,
  "sales_and_marketing": 7680,
  "research_and_development": 0,
  "general_and_administrative": 13340,
  "net_interest_income": 0,
  "income_taxes": 0
}
```

\*\* RETRIEVE CASH FLOW STATEMENT

api/statement/cash_flow_statement?start=20200101&end=20200601 (dates inclusive)

```
{
  "cash_receipts": 0,
  "cash_disbursements": 21020,
  "ppe_purchase": 1500000,
  "new_borrowing": 1000000,
  "income_taxes_paid": 0,
  "sale_of_capital_stock": 1550000
}
```

\*\* RETRIEVE BALANCE SHEET

api/statement/balance_sheet?start=20200101&end=20200601 (dates inclusive)

```
{
  "cash": 1028980,
  "accounts_receivable": 0,
  "inventories": 0,
  "prepaid_expenses": 0,
  "other_assets": 0,
  "fixed_assets_at_cost": 1500000,
  "accumulated_depreciation": 0,
  "accounts_payable": 0,
  "accrued_expenses": 0,
  "current_portion_of_debt": 100000,
  "income_taxes_payable": 0,
  "longterm_debt": 900000,
  "capital_stock": 1550000,
  "retained_earnings": -2102
}
```
