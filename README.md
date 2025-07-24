# Predicting Animal Shelter Outcomes Using Ensemble Learning

This project implements machine learning models (R Language) to predict the outcomes of animals in shelters (adoption, euthanasia, transfer, return to owner, or died) using structured intake data from the Austin Animal Center. It explores advanced feature engineering, model evaluation, and ensemble techniques.

## 📊 Project Overview

- **Goal**: Predict shelter animal outcomes based on intake characteristics
- **Dataset**: Shelter Animal Outcomes (Kaggle)  
- **Models Used**:  
  - Random Forest  
  - Gradient Boosting Machines (GBM)  
  - Support Vector Machines (SVM)  
- **Best Result**: GBM + RF ensemble achieved the lowest multiclass log loss: `0.75603`

## 🧠 Key Techniques

- Extensive feature engineering: breed types, age groups, name presence, sterilization, color patterns
- Model tuning: tree depth, shrinkage, tree count
- Ensemble blending for improved performance
- Performance metric: Multiclass Logarithmic Loss

## 🗃️ Repository Structure
# Predicting Animal Shelter Outcomes Using Ensemble Learning

This project implements machine learning models to predict the outcomes of animals in shelters (adoption, euthanasia, transfer, return to owner, or died) using structured intake data from the Austin Animal Center. It explores advanced feature engineering, model evaluation, and ensemble techniques.

## 📊 Project Overview

- **Goal**: Predict shelter animal outcomes based on intake characteristics
- **Dataset**: Shelter Animal Outcomes (Kaggle)  
- **Models Used**:  
  - Random Forest  
  - Gradient Boosting Machines (GBM)  
  - Support Vector Machines (SVM)  
- **Best Result**: GBM + RF ensemble achieved the lowest multiclass log loss: `0.75603`

## 🧠 Key Techniques

- Extensive feature engineering: breed types, age groups, name presence, sterilization, color patterns
- Model tuning: tree depth, shrinkage, tree count
- Ensemble blending for improved performance
- Performance metric: Multiclass Logarithmic Loss

## 🗃️ Repository Structure

1) Codes are all in code folder. Main file is outside and functions are in subfolder of functions.

2) Plots are in Plots.docx

3) Dataset , training and test are in dataset folder.

4) Outcome (target variables) predictive values are in Results(csv) file for RF,GBM and RF+GBM.


## 📈 Results

| Model     | Log Loss  |
|-----------|-----------|
| SVM       | 0.87825   |
| RF        | 0.80026   |
| GBM       | 0.77396   |
| **RF+GBM (Ensemble)** | **0.75603** |

## 📚 Technologies Used

- **Languages**: R
- **Libraries**: `randomForest`, `gbm`, `e1071`, `caret`, `MLmetrics`, `lubridate`
- **Tools**: RStudio, Excel (for result storage), Git

## 📌 Author

**Hina Tariq**  
Ph.D. Researcher, Toronto Metropolitan University  

---

## 📝 Citation

If you use this code or methodology, please cite:

> Tariq, H. *Predicting Outcomes by Mining Animal Shelter Data*. Term Paper, CP8210 – Topics in Data Science.

---

## 📎 License

This project is open for educational use. Contact the author for permission regarding any commercial or publication-based use.

