## GET TRANSACTION TYPES

GET api/transaction/types

```
{
  "issue_common_stock": {
    "transactionDate": "date",
    "accountingDate": "date",
    "capital": "number",
    "description": "text"
  },
  "salary_and_employment_expenses": {
    "transactionDate": "date",
    "accountingDate": "date",
    "salary_paid_general_and_administrative": "number",
    "employment_expenses_accrued_general_and_administrative": "number",
    "salary_paid_sales_and_marketing": "number",
    "employment_expenses_accrued_sales_and_marketing": "number",
    "description": "text"
  },
  "borrow": {
    "transactionDate": "date",
    "accountingDate": "date",
    "loan_amount": "number",
    "current_debt": "number",
    "long_term_debt": "number",
    "description": "text"
  },
  "purchase_ppe": {
    "transactionDate": "date",
    "accountingDate": "date",
    "cost_of_ppe": "number",
    "description": "text"
  },
  "pay_accrued_expenses": {
    "transactionDate": "date",
    "accountingDate": "date",
    "accrued_expenses_paid": "number",
    "description": "text"
  }
```

## NEW ISSUE COMMON STOCK

POST api/transaction/new

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

## NEW SALARY AND EMPLOYMENT EXPENSES

POST api/transaction/new

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

## NEW BORROW (take out loan)

POST api/transaction/new

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

## NEW PURCHASE PPE (plant property & equipment)

POST api/transaction/new

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

## NEW PAY ACCRUED EXPENSES

POST api/transaction/new

```
{
  "pay_accrued_expenses": {
    "transactionDate": "05/15/2020",
    "accountingDate": "05/01/2020",
    "accrued_expenses_paid": 9690,
    "description": "some description text"
  }
}
```

## RETRIEVE INCOME STATEMENT

GET api/statement/income_statement?start=20200101&end=20200601 (dates inclusive)

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

## RETRIEVE CASH FLOW STATEMENT

GET api/statement/cash_flow_statement?start=20200101&end=20200601 (dates inclusive)

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

## RETRIEVE BALANCE SHEET

GET api/statement/balance_sheet?start=20200101&end=20200601 (dates inclusive)

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
