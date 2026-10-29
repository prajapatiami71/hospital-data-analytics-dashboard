# 🏥 Hospital Management and Patient Analytics Dashboard

## 📌 Project Overview

The **Hospital Management and Patient Analytics Dashboard** is a data analytics project developed using Microsoft Power BI, Microsoft Excel, Power Query, and DAX.

The purpose of this project is to analyze hospital data and present meaningful insights through interactive dashboards, charts, and Key Performance Indicators (KPIs).

The dashboard helps users understand patient demographics, hospital admissions, medical conditions, department performance, billing amounts, and payment statuses.

This project demonstrates how data analytics and business intelligence tools can transform raw hospital data into useful information for reporting and decision-making.

---

## 🎯 Project Objectives

- Analyze hospital patient records.
- Monitor hospital admission and discharge trends.
- Understand patient demographics and age distribution.
- Identify the most common medical conditions.
- Analyze department-wise patient distribution.
- Examine hospital billing and payment statuses.
- Calculate important hospital performance indicators.
- Create an interactive dashboard for data exploration.
- Present business insights through data visualization.

---

## 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| Microsoft Power BI | Dashboard creation and data visualization |
| Microsoft Excel | Data storage and spreadsheet analysis |
| Power Query | Data cleaning and transformation |
| DAX | KPI calculations and analytical measures |
| SQL | Data querying, if used |
| Microsoft PowerPoint | Project presentation |
| GitHub | Project version control and portfolio hosting |

---

## 📊 Dataset Description

The project uses a hospital dataset provided for analysis.

The dataset is expected to contain hospital-related information such as:

- Patient ID
- Patient Name
- Age
- Gender
- Blood Group
- Department
- Doctor Name
- Admission Date
- Discharge Date
- Diagnosis
- Room Type
- Bill Amount (INR)
- Payment Status
- City

**Note:** The actual dataset columns, row count, and data quality must be verified against the original Excel file. The fields listed above should be retained in this description only if they exist in the dataset.

### Dataset Files

- **Raw Dataset:** Original hospital Excel file.
- **Processed Dataset:** Cleaned and transformed dataset used for analysis.

The original dataset should remain unchanged so that data preparation steps can be reviewed and reproduced.

---

## 🧹 Data Cleaning and Preparation

Data preparation is performed using Microsoft Excel and Power Query.

The process includes:

1. Inspecting the dataset structure.
2. Checking missing values.
3. Identifying duplicate records.
4. Correcting data types.
5. Formatting dates and numerical values.
6. Standardizing category names.
7. Validating admission and discharge dates.
8. Checking billing values.
9. Creating calculated columns where required.
10. Preparing the final dataset for Power BI analysis.

Valid records should not be removed unnecessarily. Duplicate records should be removed only when they are confirmed to be duplicates.

---

## 📈 Dashboard Features

The dashboard is organized into analytical sections.

### 1. Executive Overview

Provides a summary of important hospital metrics.

Possible KPIs include:

- Total Patient Records
- Unique Patients
- Total Admissions
- Total Billing Amount
- Average Bill Amount
- Average Length of Stay
- Total Doctors
- Total Departments

The final KPIs depend on the fields available in the dataset.

### 2. Patient Analytics

Analyzes patient demographics and medical information.

Features include:

- Patient distribution by gender.
- Patient distribution by age group.
- Patient distribution by blood group.
- Medical condition analysis.
- City-wise patient distribution.
- Patient distribution by department.

### 3. Department Performance

Provides insights into hospital departments.

Features include:

- Department-wise patient records.
- Admissions by department.
- Billing by department.
- Average bill amount by department.
- Department-wise length of stay.
- Monthly departmental trends.

### 4. Financial Analysis

Analyzes billing and payment information.

Features include:

- Total billed amount.
- Average bill amount.
- Billing by department.
- Billing by room type.
- Billing by medical condition.
- Payment status distribution.
- Monthly billing trends.

Collected payments and outstanding balances should be calculated only when the necessary payment data is available.

### 5. Admission and Discharge Analysis

Examines hospital admission and discharge patterns.

Features include:

- Admissions by month.
- Discharges by month.
- Average length of stay.
- Length-of-stay distribution.
- Department-wise admission trends.
- Admission and discharge comparisons.

---

## 📌 Key Performance Indicators (KPIs)

| KPI | Description |
|---|---|
| Total Patient Records | Total number of rows representing hospital records |
| Unique Patients | Number of distinct patients |
| Total Admissions | Number of distinct admission records |
| Total Billing | Sum of valid billing amounts |
| Average Bill Amount | Average billing amount per record |
| Total Doctors | Number of distinct doctors |
| Total Departments | Number of distinct departments |
| Average Length of Stay | Average calculated stay duration |
| Payment Status | Distribution of records by payment status |

Each KPI must be calculated using the actual dataset and the correct counting method.

---

## 🧮 DAX Measures

The following are example DAX measures. Adjust table and column names to match the actual Power BI data model.

### Total Patient Records

```dax
Total Patient Records =
COUNTROWS('Hospital Data')
```

### Unique Patients

```dax
Unique Patients =
DISTINCTCOUNT('Hospital Data'[Patient ID])
```

### Total Admissions

```dax
Total Admissions =
DISTINCTCOUNT('Hospital Data'[Record ID])
```

Use this formula if `Record ID` uniquely identifies each admission.

### Total Billing

```dax
Total Billing =
SUM('Hospital Data'[Bill Amount (INR)])
```

### Average Bill Amount

```dax
Average Bill Amount =
AVERAGE('Hospital Data'[Bill Amount (INR)])
```

### Total Doctors

```dax
Total Doctors =
DISTINCTCOUNT('Hospital Data'[Doctor Name])
```

### Total Departments

```dax
Total Departments =
DISTINCTCOUNT('Hospital Data'[Department])
```

### Average Length of Stay

```dax
Average Length of Stay =
AVERAGE('Hospital Data'[Length of Stay])
```

This measure requires a valid `Length of Stay` column.

**Important:** These formulas are examples. Confirm that the corresponding columns exist and that the calculations match the dataset before using them in the dashboard.

---

## 🎨 Dashboard Design

The dashboard follows a modern healthcare analytics design.

### Design Elements

- **Primary colors:** Dark blue and teal.
- **Background:** White or light gray.
- **Positive indicators:** Green.
- **Warning indicators:** Orange.
- **Attention indicators:** Red.
- **Layout:** 16:9 widescreen dashboard.
- **Visual style:** Clean, professional, and easy to navigate.

### Interactive Features

Where appropriate, the dashboard includes:

- Date slicers.
- Department filters.
- Gender filters.
- Medical condition filters.
- Payment status filters.
- Room type filters.
- City filters.
- Interactive charts.
- Tooltips.
- Drill-through pages.
- Navigation buttons.

Only filters supported by actual dataset columns should be included.

---

## 💡 Business Insights

The dashboard can help investigate questions such as:

1. Which department has the highest number of patient records?
2. Which medical conditions occur most frequently?
3. Which age groups account for the largest share of patients?
4. How do admissions change over time?
5. Which departments have the highest total billing?
6. Which room types have the highest average bills?
7. What is the distribution of payment statuses?
8. Which cities contribute the most patient records?
9. Which departments have the longest average stays?
10. What operational patterns can be identified from the data?

The final insights should be based on actual calculations from the dataset rather than assumptions.

---

## 📂 Project Folder Structure

```text
hospital-management-powerbi-dashboard/
│
├── README.md
│
├── 01_Project_Files/
│   ├── Hospital_Management_Dashboard.pbix
│   └── Hospital_Analysis.sql
│
├── 02_Dataset_Files/
│   ├── Raw_Dataset/
│   │   └── hospital_data_50000_rows.xlsx
│   │
│   └── Processed_Dataset/
│       └── Hospital_Processed_Dataset.xlsx
│
├── 03_Dashboard_Screenshots/
│   ├── Executive_Overview.png
│   ├── Patient_Analytics.png
│   ├── Department_Analysis.png
│   └── Financial_Analysis.png
│
└── 04_Documentation/
    ├── Hospital_Project_Report.pdf
    └── Hospital_Project_Presentation.pptx
```

Include only files that have actually been created. SQL, screenshots, reports, and presentations can be added as they become available.

---

## 🚀 How to Use This Project

1. Download or clone this GitHub repository.
2. Open the Power BI dashboard file in Power BI Desktop.
3. Configure the dataset path if required.
4. Refresh the dataset.
5. Review the dashboard pages.
6. Use slicers and filters to explore the data.
7. Analyze KPIs and visualizations.
8. Review the project documentation.

---

## 📷 Dashboard Screenshots

Add screenshots of the completed dashboard to the `03_Dashboard_Screenshots` folder.

To display the executive overview on this README page, use:

```markdown
![Hospital Dashboard](03_Dashboard_Screenshots/Executive_Overview.png)
```

The image will appear after you upload a screenshot with that exact filename and path.

---

## 📋 Project Deliverables

The project deliverables may include:

- Power BI dashboard (`.pbix`)
- Raw Excel dataset (`.xlsx`)
- Processed Excel dataset (`.xlsx`)
- SQL scripts (`.sql`), if used
- Dashboard screenshots (`.png`)
- Project report (`.pdf`)
- Project presentation (`.pptx`)
- Dashboard interaction video (`.mp4`), if required

---

## 🔒 Data Privacy

Hospital data may contain confidential personal and medical information.

Only share datasets that you have permission to publish. Remove or anonymize patient names, personal identifiers, and sensitive medical details before making the repository public.

Do not upload confidential hospital records, credentials, or private information.

---

## 🔮 Future Enhancements

Possible improvements include:

- Automated data refresh.
- Additional hospital performance KPIs.
- Advanced time-series analysis.
- Integration with SQL databases.
- Automated reporting.
- Additional interactive dashboard pages.
- More detailed operational analysis.

Future enhancements should be implemented only when the required data and tools are available.

---

## 📝 Conclusion

The Hospital Management and Patient Analytics Dashboard demonstrates the use of business intelligence tools to organize, analyze, and visualize hospital data.

By combining Excel, Power Query, DAX, and Power BI, the project provides an interactive reporting solution that helps users explore patient records, admission patterns, departmental activity, and billing information.

The project also demonstrates practical skills in data cleaning, data visualization, KPI development, dashboard design, and analytical reporting.

---

## 👨‍💻 Author

**Name:** Your Name

**Project:** Hospital Management and Patient Analytics Dashboard

**Domain:** Healthcare Analytics

**Tools:** Microsoft Power BI, Excel, Power Query, and DAX

**GitHub:** Add your GitHub repository link here.
