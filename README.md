# Credit Risk & Loan Default Prediction

![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![PowerBI](https://img.shields.io/badge/PowerBI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![ScikitLearn](https://img.shields.io/badge/ScikitLearn-F7931E?style=for-the-badge&logo=scikit-learn&logoColor=white)

## 📌 Project Overview
An end-to-end machine learning project analyzing 1.3M real loan records
from Lending Club to predict loan defaults and help financial institutions
make smarter lending decisions.

## ❓ Business Problem
> "How can the bank leverage historical loan data to predict loan defaults,
> reduce NPAs, and build a smarter credit scoring model?"

## 🛠️ Tools & Technologies
| Tool | Purpose |
|------|---------|
| Python (pandas, numpy, scikit-learn) | Data cleaning, ML modeling |
| Matplotlib | Data visualization |
| MySQL | Data storage & SQL analysis |
| Power BI | Interactive dashboard |
| GitHub | Version control |

## 📁 Project Structure
```
credit-risk-analysis/
├── data/
│   ├── credit_risk_cleaned.csv
│   └── credit_risk_predictions.csv
├── python/
│   └── credit_risk_analysis.ipynb
├── sql/
│   └── credit_risk_queries.sql
├── powerbi/
│   └── credit_risk_dashboard.pbix
├── report/
│   └── Credit_Risk_Project_Report.docx
└── README.md
```

## 📊 Dataset
- **Source:** Lending Club (via Kaggle)
- **Records:** 1,345,310 loans
- **Period:** 2007 – 2018
- **Target:** 0 = Fully Paid, 1 = Default (Charged Off)
- **Class split:** 80% Fully Paid, 20% Default

## 🧹 Data Cleaning Steps
- Started with 2.26M rows and 151 columns
- Dropped columns with >40% missing values
- Selected 23 most relevant features
- Filtered Fully Paid and Charged Off only
- Encoded categorical variables using LabelEncoder
- Handled class imbalance using class_weight='balanced'

## 🤖 ML Models & Results
| Model | Accuracy | Recall | ROC-AUC |
|-------|----------|--------|---------|
| Logistic Regression | 66.25% | 62.84% | 0.7069 ✅ |
| Random Forest | 80.15% | 6.19% | 0.7029 |

**Winner: Logistic Regression**
> Recall is the most critical metric for credit risk —
> catching actual defaulters matters more than overall accuracy!

## 🔍 Top Default Predictors
1. **DTI** (Debt-to-income ratio) — 9.1%
2. **Revolving Balance** — 8.7%
3. **Revolving Utilization** — 8.5%
4. **Annual Income** — 7.9%
5. **Interest Rate** — 7.8%

## 🗄️ Key SQL Findings
- Overall default rate: **19.96%**
- Grade 6 loans default at **49.93%** vs Grade 0 at **6.04%**
- Very High interest rate (>18%) loans default at **37.53%**
- DTI > 30 borrowers are significantly high risk
- Loan purpose is a strong predictor of default

## 💡 Key Business Recommendations
- Reject or flag all Grade 5–6 loan applications
- Cap interest rates at 18% for new approvals
- Use DTI > 30 as automatic red flag
- Monitor revolving utilization > 80% as early warning
- Deploy Logistic Regression for real-time default scoring

## 🚀 How to Run
1. Clone the repo:
```bash
git clone https://github.com/YOUR_USERNAME/credit-risk-analysis.git
```

2. Install dependencies:
```bash
pip install pandas numpy scikit-learn matplotlib sqlalchemy mysql-connector-python
```

3. Run Jupyter notebook in `python/` folder

4. Import `credit_risk_cleaned.csv` into MySQL and run `sql/credit_risk_queries.sql`

5. Open `powerbi/credit_risk_dashboard.pbix` in Power BI Desktop

## 📋 Requirements
```
pandas
numpy
scikit-learn
matplotlib
sqlalchemy
mysql-connector-python
```

## 👤 Author
**[Your Name]**
- 📧 Email: [your email]
- 💼 LinkedIn: [your LinkedIn]
- 🐙 GitHub: [your GitHub]

## 📄 License
Educational and portfolio purposes only.
Data sourced from Lending Club via Kaggle.
