## Kaggle API


```python
!pip install kaggle
```

    Requirement already satisfied: kaggle in /usr/local/lib/python3.7/dist-packages (1.5.12)
    Requirement already satisfied: python-dateutil in /usr/local/lib/python3.7/dist-packages (from kaggle) (2.8.2)
    Requirement already satisfied: urllib3 in /usr/local/lib/python3.7/dist-packages (from kaggle) (1.24.3)
    Requirement already satisfied: six>=1.10 in /usr/local/lib/python3.7/dist-packages (from kaggle) (1.15.0)
    Requirement already satisfied: requests in /usr/local/lib/python3.7/dist-packages (from kaggle) (2.23.0)
    Requirement already satisfied: python-slugify in /usr/local/lib/python3.7/dist-packages (from kaggle) (5.0.2)
    Requirement already satisfied: certifi in /usr/local/lib/python3.7/dist-packages (from kaggle) (2021.5.30)
    Requirement already satisfied: tqdm in /usr/local/lib/python3.7/dist-packages (from kaggle) (4.62.3)
    Requirement already satisfied: text-unidecode>=1.3 in /usr/local/lib/python3.7/dist-packages (from python-slugify->kaggle) (1.3)
    Requirement already satisfied: chardet<4,>=3.0.2 in /usr/local/lib/python3.7/dist-packages (from requests->kaggle) (3.0.4)
    Requirement already satisfied: idna<3,>=2.5 in /usr/local/lib/python3.7/dist-packages (from requests->kaggle) (2.10)
    


```python
from google.colab import files

uploaded = files.upload()

for fn in uploaded.keys():
  print('User uploaded file "{name}" with length {length} bytes'.format(
      name=fn, length=len(uploaded[fn])))
  
# Then move kaggle.json into the folder where the API expects to find it.
!mkdir -p ~/.kaggle/ && mv kaggle.json ~/.kaggle/ && chmod 600 ~/.kaggle/kaggle.json
```



<input type="file" id="files-1a6d23ea-789c-4cd5-a901-b64b2415b8e2" name="files[]" multiple disabled
   style="border:none" />
<output id="result-1a6d23ea-789c-4cd5-a901-b64b2415b8e2">
 Upload widget is only available when the cell has been executed in the
 current browser session. Please rerun this cell to enable.
 </output>
 <script src="/nbextensions/google.colab/files.js"></script> 



    ---------------------------------------------------------------------------

    KeyboardInterrupt                         Traceback (most recent call last)

    <ipython-input-57-5e2b5f92ba05> in <module>()
          1 from google.colab import files
          2 
    ----> 3 uploaded = files.upload()
          4 
          5 for fn in uploaded.keys():
    

    /usr/local/lib/python3.7/dist-packages/google/colab/files.py in upload()
         62   result = _output.eval_js(
         63       'google.colab._files._uploadFiles("{input_id}", "{output_id}")'.format(
    ---> 64           input_id=input_id, output_id=output_id))
         65   files = _collections.defaultdict(_six.binary_type)
         66   # Mapping from original filename to filename as saved locally.
    

    /usr/local/lib/python3.7/dist-packages/google/colab/output/_js.py in eval_js(script, ignore_result, timeout_sec)
         38   if ignore_result:
         39     return
    ---> 40   return _message.read_reply_from_input(request_id, timeout_sec)
         41 
         42 
    

    /usr/local/lib/python3.7/dist-packages/google/colab/_message.py in read_reply_from_input(message_id, timeout_sec)
         99     reply = _read_next_input_message()
        100     if reply == _NOT_READY or not isinstance(reply, dict):
    --> 101       time.sleep(0.025)
        102       continue
        103     if (reply.get('type') == 'colab_reply' and
    

    KeyboardInterrupt: 


## 데이터 다운로드 및 불러오기



```python
!kaggle competitions list
```

    Warning: Looks like you're using an outdated API Version, please consider updating (server 1.5.12 / client 1.5.4)
    ref                                            deadline             category            reward  teamCount  userHasEntered  
    ---------------------------------------------  -------------------  ---------------  ---------  ---------  --------------  
    contradictory-my-dear-watson                   2030-07-01 23:59:00  Getting Started     Prizes         63           False  
    gan-getting-started                            2030-07-01 23:59:00  Getting Started     Prizes         81           False  
    store-sales-time-series-forecasting            2030-06-30 23:59:00  Getting Started  Knowledge        487           False  
    tpu-getting-started                            2030-06-03 23:59:00  Getting Started  Knowledge        157           False  
    digit-recognizer                               2030-01-01 00:00:00  Getting Started  Knowledge       1459           False  
    titanic                                        2030-01-01 00:00:00  Getting Started  Knowledge      14879           False  
    house-prices-advanced-regression-techniques    2030-01-01 00:00:00  Getting Started  Knowledge       4418            True  
    connectx                                       2030-01-01 00:00:00  Getting Started  Knowledge        263           False  
    nlp-getting-started                            2030-01-01 00:00:00  Getting Started  Knowledge       1321           False  
    competitive-data-science-predict-future-sales  2022-12-31 23:59:00  Playground           Kudos      12891           False  
    g-research-crypto-forecasting                  2022-02-01 23:59:00  Featured          $125,000        148           False  
    petfinder-pawpularity-score                    2022-01-13 23:59:00  Research           $25,000       1631           False  
    optiver-realized-volatility-prediction         2022-01-10 23:59:00  Featured          $100,000       3852           False  
    nfl-big-data-bowl-2022                         2022-01-06 23:59:00  Analytics         $100,000          0           False  
    sartorius-cell-instance-segmentation           2021-12-30 23:59:00  Featured           $75,000        495           False  
    wikipedia-image-caption                        2021-12-09 11:59:00  Playground            Swag         71           False  
    lux-ai-2021                                    2021-12-06 23:59:00  Featured           $10,000        928           False  
    tabular-playground-series-nov-2021             2021-11-30 23:59:00  Playground            Swag        352           False  
    kaggle-survey-2021                             2021-11-28 23:59:00  Analytics          $30,000          0           False  
    chaii-hindi-and-tamil-question-answering       2021-11-15 23:59:00  Research           $10,000        807           False  
    


```python
!kaggle competitions download -c house-prices-advanced-regression-techniques
```

    User cancelled operation
    


```python
import pandas as pd 
train = pd.read_csv('train.csv')
test = pd.read_csv('test.csv')
print('Data Loading is done!')
```

    Data Loading is done!
    

## 데이터 둘러보기 


```python
print("The shape of Train Data is:", train.shape)
print("The shape of Test Data is:", test.shape)
```

    The shape of Train Data is: (1460, 81)
    The shape of Test Data is: (1459, 80)
    


```python
print(train.info())
```

    <class 'pandas.core.frame.DataFrame'>
    RangeIndex: 1460 entries, 0 to 1459
    Data columns (total 81 columns):
     #   Column         Non-Null Count  Dtype  
    ---  ------         --------------  -----  
     0   Id             1460 non-null   int64  
     1   MSSubClass     1460 non-null   int64  
     2   MSZoning       1460 non-null   object 
     3   LotFrontage    1201 non-null   float64
     4   LotArea        1460 non-null   int64  
     5   Street         1460 non-null   object 
     6   Alley          91 non-null     object 
     7   LotShape       1460 non-null   object 
     8   LandContour    1460 non-null   object 
     9   Utilities      1460 non-null   object 
     10  LotConfig      1460 non-null   object 
     11  LandSlope      1460 non-null   object 
     12  Neighborhood   1460 non-null   object 
     13  Condition1     1460 non-null   object 
     14  Condition2     1460 non-null   object 
     15  BldgType       1460 non-null   object 
     16  HouseStyle     1460 non-null   object 
     17  OverallQual    1460 non-null   int64  
     18  OverallCond    1460 non-null   int64  
     19  YearBuilt      1460 non-null   int64  
     20  YearRemodAdd   1460 non-null   int64  
     21  RoofStyle      1460 non-null   object 
     22  RoofMatl       1460 non-null   object 
     23  Exterior1st    1460 non-null   object 
     24  Exterior2nd    1460 non-null   object 
     25  MasVnrType     1452 non-null   object 
     26  MasVnrArea     1452 non-null   float64
     27  ExterQual      1460 non-null   object 
     28  ExterCond      1460 non-null   object 
     29  Foundation     1460 non-null   object 
     30  BsmtQual       1423 non-null   object 
     31  BsmtCond       1423 non-null   object 
     32  BsmtExposure   1422 non-null   object 
     33  BsmtFinType1   1423 non-null   object 
     34  BsmtFinSF1     1460 non-null   int64  
     35  BsmtFinType2   1422 non-null   object 
     36  BsmtFinSF2     1460 non-null   int64  
     37  BsmtUnfSF      1460 non-null   int64  
     38  TotalBsmtSF    1460 non-null   int64  
     39  Heating        1460 non-null   object 
     40  HeatingQC      1460 non-null   object 
     41  CentralAir     1460 non-null   object 
     42  Electrical     1459 non-null   object 
     43  1stFlrSF       1460 non-null   int64  
     44  2ndFlrSF       1460 non-null   int64  
     45  LowQualFinSF   1460 non-null   int64  
     46  GrLivArea      1460 non-null   int64  
     47  BsmtFullBath   1460 non-null   int64  
     48  BsmtHalfBath   1460 non-null   int64  
     49  FullBath       1460 non-null   int64  
     50  HalfBath       1460 non-null   int64  
     51  BedroomAbvGr   1460 non-null   int64  
     52  KitchenAbvGr   1460 non-null   int64  
     53  KitchenQual    1460 non-null   object 
     54  TotRmsAbvGrd   1460 non-null   int64  
     55  Functional     1460 non-null   object 
     56  Fireplaces     1460 non-null   int64  
     57  FireplaceQu    770 non-null    object 
     58  GarageType     1379 non-null   object 
     59  GarageYrBlt    1379 non-null   float64
     60  GarageFinish   1379 non-null   object 
     61  GarageCars     1460 non-null   int64  
     62  GarageArea     1460 non-null   int64  
     63  GarageQual     1379 non-null   object 
     64  GarageCond     1379 non-null   object 
     65  PavedDrive     1460 non-null   object 
     66  WoodDeckSF     1460 non-null   int64  
     67  OpenPorchSF    1460 non-null   int64  
     68  EnclosedPorch  1460 non-null   int64  
     69  3SsnPorch      1460 non-null   int64  
     70  ScreenPorch    1460 non-null   int64  
     71  PoolArea       1460 non-null   int64  
     72  PoolQC         7 non-null      object 
     73  Fence          281 non-null    object 
     74  MiscFeature    54 non-null     object 
     75  MiscVal        1460 non-null   int64  
     76  MoSold         1460 non-null   int64  
     77  YrSold         1460 non-null   int64  
     78  SaleType       1460 non-null   object 
     79  SaleCondition  1460 non-null   object 
     80  SalePrice      1460 non-null   int64  
    dtypes: float64(3), int64(35), object(43)
    memory usage: 924.0+ KB
    None
    


```python
print(test.info())
```

    <class 'pandas.core.frame.DataFrame'>
    RangeIndex: 1459 entries, 0 to 1458
    Data columns (total 80 columns):
     #   Column         Non-Null Count  Dtype  
    ---  ------         --------------  -----  
     0   Id             1459 non-null   int64  
     1   MSSubClass     1459 non-null   int64  
     2   MSZoning       1455 non-null   object 
     3   LotFrontage    1232 non-null   float64
     4   LotArea        1459 non-null   int64  
     5   Street         1459 non-null   object 
     6   Alley          107 non-null    object 
     7   LotShape       1459 non-null   object 
     8   LandContour    1459 non-null   object 
     9   Utilities      1457 non-null   object 
     10  LotConfig      1459 non-null   object 
     11  LandSlope      1459 non-null   object 
     12  Neighborhood   1459 non-null   object 
     13  Condition1     1459 non-null   object 
     14  Condition2     1459 non-null   object 
     15  BldgType       1459 non-null   object 
     16  HouseStyle     1459 non-null   object 
     17  OverallQual    1459 non-null   int64  
     18  OverallCond    1459 non-null   int64  
     19  YearBuilt      1459 non-null   int64  
     20  YearRemodAdd   1459 non-null   int64  
     21  RoofStyle      1459 non-null   object 
     22  RoofMatl       1459 non-null   object 
     23  Exterior1st    1458 non-null   object 
     24  Exterior2nd    1458 non-null   object 
     25  MasVnrType     1443 non-null   object 
     26  MasVnrArea     1444 non-null   float64
     27  ExterQual      1459 non-null   object 
     28  ExterCond      1459 non-null   object 
     29  Foundation     1459 non-null   object 
     30  BsmtQual       1415 non-null   object 
     31  BsmtCond       1414 non-null   object 
     32  BsmtExposure   1415 non-null   object 
     33  BsmtFinType1   1417 non-null   object 
     34  BsmtFinSF1     1458 non-null   float64
     35  BsmtFinType2   1417 non-null   object 
     36  BsmtFinSF2     1458 non-null   float64
     37  BsmtUnfSF      1458 non-null   float64
     38  TotalBsmtSF    1458 non-null   float64
     39  Heating        1459 non-null   object 
     40  HeatingQC      1459 non-null   object 
     41  CentralAir     1459 non-null   object 
     42  Electrical     1459 non-null   object 
     43  1stFlrSF       1459 non-null   int64  
     44  2ndFlrSF       1459 non-null   int64  
     45  LowQualFinSF   1459 non-null   int64  
     46  GrLivArea      1459 non-null   int64  
     47  BsmtFullBath   1457 non-null   float64
     48  BsmtHalfBath   1457 non-null   float64
     49  FullBath       1459 non-null   int64  
     50  HalfBath       1459 non-null   int64  
     51  BedroomAbvGr   1459 non-null   int64  
     52  KitchenAbvGr   1459 non-null   int64  
     53  KitchenQual    1458 non-null   object 
     54  TotRmsAbvGrd   1459 non-null   int64  
     55  Functional     1457 non-null   object 
     56  Fireplaces     1459 non-null   int64  
     57  FireplaceQu    729 non-null    object 
     58  GarageType     1383 non-null   object 
     59  GarageYrBlt    1381 non-null   float64
     60  GarageFinish   1381 non-null   object 
     61  GarageCars     1458 non-null   float64
     62  GarageArea     1458 non-null   float64
     63  GarageQual     1381 non-null   object 
     64  GarageCond     1381 non-null   object 
     65  PavedDrive     1459 non-null   object 
     66  WoodDeckSF     1459 non-null   int64  
     67  OpenPorchSF    1459 non-null   int64  
     68  EnclosedPorch  1459 non-null   int64  
     69  3SsnPorch      1459 non-null   int64  
     70  ScreenPorch    1459 non-null   int64  
     71  PoolArea       1459 non-null   int64  
     72  PoolQC         3 non-null      object 
     73  Fence          290 non-null    object 
     74  MiscFeature    51 non-null     object 
     75  MiscVal        1459 non-null   int64  
     76  MoSold         1459 non-null   int64  
     77  YrSold         1459 non-null   int64  
     78  SaleType       1458 non-null   object 
     79  SaleCondition  1459 non-null   object 
    dtypes: float64(11), int64(26), object(43)
    memory usage: 912.0+ KB
    None
    

## Feature Engineering

### 이상치 제거


```python
train.drop(train[(train['OverallQual']<4) & (train['SalePrice']> 200000)].index, inplace=True)
train.drop(train[(train['OverallCond']<4) & (train['SalePrice']> 200000)].index, inplace=True)
train.reset_index(drop=True, inplace=True)
print(train.shape)
```

    (1458, 81)
    

### 종속변수의 로그 변환


```python
import seaborn as sns
import matplotlib.pyplot as plt
from scipy.stats import norm

(mu, sigma) = norm.fit(train['SalePrice'])
print("The value of mu before log transformation is:", mu)
print("The value of sigma before log transformation is:", sigma)

fig, ax = plt.subplots(figsize=(10, 6))
sns.histplot(train['SalePrice'], color="b", stat="probability")
ax.xaxis.grid(False)
ax.set(ylabel="Frequency")
ax.set(xlabel="SalePrice")
ax.set(title="SalePrice distribution")

plt.axvline(mu, color='r', linestyle='--')
plt.text(mu + 10000, 0.11, 'Mean of SalePrice', rotation=0, color='r')
fig.show()
```

    The value of mu before log transformation is: 180761.24142661178
    The value of sigma before log transformation is: 79270.93617295024
    


    
![png](output_15_1.png)
    



```python
import numpy as np 

train["SalePrice"] = np.log1p(train["SalePrice"])

(mu, sigma) = norm.fit(train['SalePrice'])
print("The value of mu before log transformation is:", mu)
print("The value of sigma before log transformation is:", sigma)

fig, ax = plt.subplots(figsize=(10, 6))
sns.histplot(train['SalePrice'], color="b", stat="probability")
ax.xaxis.grid(False)
ax.set(ylabel="Frequency")
ax.set(xlabel="SalePrice")
ax.set(title="SalePrice distribution")

plt.axvline(mu, color='r', linestyle='--')
plt.text(mu + 0.05, 0.111, 'Mean of SalePrice', rotation=0, color='r')
plt.ylim(0, 0.12)
fig.show()
```

    The value of mu before log transformation is: 12.0233397799989
    The value of sigma before log transformation is: 0.3989191793099824
    


    
![png](output_16_1.png)
    


### 데이터 ID 값 제거 


```python
train_ID = train['Id']
test_ID = test['Id']
train.drop(['Id'], axis=1, inplace=True)
test.drop(['Id'], axis=1, inplace=True)
train.shape, test.shape
```




    ((1458, 80), (1459, 79))



### Y값 추출



```python
y = train['SalePrice'].reset_index(drop=True)
train = train.drop('SalePrice', axis = 1)
train.shape, test.shape, y.shape
```




    ((1458, 79), (1459, 79), (1458,))



### 데이터 합치기


```python
all_df = pd.concat([train, test]).reset_index(drop=True)
all_df.shape
```




    (2917, 79)



### 결측치 확인


```python
def check_na(data, head_num = 6):
  isnull_na = (data.isnull().sum() / len(data)) * 100
  data_na = isnull_na.drop(isnull_na[isnull_na == 0].index).sort_values(ascending=False)
  missing_data = pd.DataFrame({'Missing Ratio' :data_na, 
                               'Data Type': data.dtypes[data_na.index]})
  print("결측치 데이터 컬럼과 건수:\n", missing_data.head(head_num))

check_na(all_df, 20)
```

    결측치 데이터 컬럼과 건수:
                   Missing Ratio Data Type
    PoolQC            99.657182    object
    MiscFeature       96.400411    object
    Alley             93.212204    object
    Fence             80.425094    object
    FireplaceQu       48.680151    object
    LotFrontage       16.626671   float64
    GarageFinish       5.450806    object
    GarageYrBlt        5.450806   float64
    GarageQual         5.450806    object
    GarageCond         5.450806    object
    GarageType         5.382242    object
    BsmtExposure       2.811107    object
    BsmtCond           2.811107    object
    BsmtQual           2.776826    object
    BsmtFinType2       2.742544    object
    BsmtFinType1       2.708262    object
    MasVnrType         0.788481    object
    MasVnrArea         0.754200   float64
    MSZoning           0.137127    object
    BsmtFullBath       0.068564   float64
    

### 결측치 제거


```python
all_df.drop(['PoolQC', 'MiscFeature', 'Alley', 'Fence', 'FireplaceQu', 'LotFrontage'], axis=1, inplace=True)
check_na(all_df)
```

    결측치 데이터 컬럼과 건수:
                   Missing Ratio Data Type
    GarageQual         5.450806    object
    GarageFinish       5.450806    object
    GarageYrBlt        5.450806   float64
    GarageCond         5.450806    object
    GarageType         5.382242    object
    BsmtCond           2.811107    object
    

### 결측치 채우기



```python
print(all_df['BsmtCond'].value_counts())
print()
print(all_df['BsmtCond'].mode()[0])
```

    TA    2604
    Gd     122
    Fa     104
    Po       5
    Name: BsmtCond, dtype: int64
    
    TA
    


```python
import numpy as np
cat_all_vars = train.select_dtypes(exclude=[np.number])
print("The whole number of all_vars", len(list(cat_all_vars)))

final_cat_vars = []
for v in cat_all_vars:
    if v not in ['PoolQC', 'MiscFeature', 'Alley', 'Fence', 'FireplaceQu', 'LotFrontage']:
        final_cat_vars.append(v)

print("The whole number of final_cat_vars", len(final_cat_vars))
for i in final_cat_vars:
  all_df[i] = all_df[i].fillna(all_df[i].mode()[0])

check_na(all_df, 20)
```

    The whole number of all_vars 43
    The whole number of final_cat_vars 38
    결측치 데이터 컬럼과 건수:
                   Missing Ratio Data Type
    GarageYrBlt        5.450806   float64
    MasVnrArea         0.754200   float64
    BsmtHalfBath       0.068564   float64
    BsmtFullBath       0.068564   float64
    GarageArea         0.034282   float64
    GarageCars         0.034282   float64
    TotalBsmtSF        0.034282   float64
    BsmtUnfSF          0.034282   float64
    BsmtFinSF2         0.034282   float64
    BsmtFinSF1         0.034282   float64
    


```python
import numpy as np
num_all_vars = list(train.select_dtypes(include=[np.number]))
print("The whole number of all_vars", len(num_all_vars))

num_all_vars.remove('LotFrontage')

print("The whole number of final_cat_vars", len(num_all_vars))
for i in num_all_vars:
  all_df[i].fillna(value=all_df[i].median(), inplace=True)

check_na(all_df, 20)
```

    The whole number of all_vars 36
    The whole number of final_cat_vars 35
    결측치 데이터 컬럼과 건수:
     Empty DataFrame
    Columns: [Missing Ratio, Data Type]
    Index: []
    

### 왜도(Skewnewss) 처리하기


```python
from scipy.stats import skew

def find_skew(x):
  return skew(x)

skewness_features = all_df[num_all_vars].apply(find_skew).sort_values(ascending=False)
skewness_features
```




    MiscVal          21.939672
    PoolArea         16.892477
    LotArea          12.867139
    LowQualFinSF     12.084539
    3SsnPorch        11.372080
    KitchenAbvGr      4.318923
    BsmtFinSF2        4.144503
    EnclosedPorch     4.013741
    ScreenPorch       3.945101
    BsmtHalfBath      3.929996
    MasVnrArea        2.615714
    OpenPorchSF       2.534326
    WoodDeckSF        1.841876
    1stFlrSF          1.469798
    BsmtFinSF1        1.429239
    MSSubClass        1.374726
    GrLivArea         1.271773
    TotalBsmtSF       1.165468
    BsmtUnfSF         0.919795
    2ndFlrSF          0.860643
    TotRmsAbvGrd      0.760404
    Fireplaces        0.734449
    HalfBath          0.695072
    BsmtFullBath      0.626733
    OverallCond       0.584601
    BedroomAbvGr      0.329555
    GarageArea        0.241611
    OverallQual       0.196514
    MoSold            0.195229
    FullBath          0.164226
    YrSold            0.132129
    GarageCars       -0.218309
    GarageYrBlt      -0.398311
    YearRemodAdd     -0.451063
    YearBuilt        -0.600023
    dtype: float64




```python
skewnewss_index = list(skewness_features.index)
skewnewss_index.remove('LotArea')
all_numeric_df = all_df.loc[:, skewnewss_index]

fig, ax = plt.subplots(figsize=(10, 6))
ax.set_xlim(0, all_numeric_df.max().sort_values(ascending=False)[0])
ax = sns.boxplot(data=all_numeric_df[skewnewss_index] , orient="h", palette="Set1")
ax.xaxis.grid(False)
ax.set(ylabel="Feature names")
ax.set(xlabel="Numeric values")
ax.set(title="Numeric Distribution of Features Before Box-Cox Transformation")
sns.despine(trim=True, left=True)
```


    
![png](output_33_0.png)
    



```python
from scipy.special import boxcox1p
from scipy.stats import boxcox_normmax

high_skew = skewness_features[skewness_features > 1]
high_skew_index = high_skew.index

print("The data before Box-Cox Transformation: \n", all_df[high_skew_index].head())

for num_var in high_skew_index:
  all_df[num_var] = boxcox1p(all_df[num_var], boxcox_normmax(all_df[num_var] + 1))

print("The data after Box-Cox Transformation: \n", all_df[high_skew_index].head())
```

    The data before Box-Cox Transformation: 
        MiscVal  PoolArea  LotArea  ...  MSSubClass  GrLivArea  TotalBsmtSF
    0        0         0     8450  ...          60       1710        856.0
    1        0         0     9600  ...          20       1262       1262.0
    2        0         0    11250  ...          60       1786        920.0
    3        0         0     9550  ...          70       1717        756.0
    4        0         0    14260  ...          60       2198       1145.0
    
    [5 rows x 18 columns]
    

    /usr/local/lib/python3.7/dist-packages/scipy/stats/stats.py:3508: PearsonRConstantInputWarning: An input array is constant; the correlation coefficent is not defined.
      warnings.warn(PearsonRConstantInputWarning())
    /usr/local/lib/python3.7/dist-packages/scipy/stats/stats.py:3538: PearsonRNearConstantInputWarning: An input array is nearly constant; the computed correlation coefficent may be inaccurate.
      warnings.warn(PearsonRNearConstantInputWarning())
    

    The data after Box-Cox Transformation: 
        MiscVal  PoolArea    LotArea  ...  MSSubClass  GrLivArea  TotalBsmtSF
    0      0.0       0.0  13.454344  ...    6.505897   7.219262   294.614887
    1      0.0       0.0  13.725427  ...    4.252612   6.933523   404.051498
    2      0.0       0.0  14.066408  ...    6.505897   7.260108   312.423510
    3      0.0       0.0  13.714276  ...    6.869385   7.223100   266.274241
    4      0.0       0.0  14.584552  ...    6.505897   7.454890   373.304502
    
    [5 rows x 18 columns]
    


```python
fig, ax = plt.subplots(figsize=(10, 6))
ax.set_xscale('log')
ax = sns.boxplot(data=all_df[high_skew_index] , orient="h", palette="Set1")
ax.xaxis.grid(False)
ax.set(ylabel="Feature names")
ax.set(xlabel="Numeric values")
ax.set(title="Numeric Distribution of Features Before Box-Cox Transformation")
sns.despine(trim=True, left=True)
```


    
![png](output_35_0.png)
    


### 도출 변수


```python
all_df['TotalSF'] = all_df['TotalBsmtSF'] + all_df['1stFlrSF'] + all_df['2ndFlrSF']
all_df = all_df.drop(['TotalBsmtSF', '1stFlrSF', '2ndFlrSF'], axis=1)
print(all_df.shape)
```

    (2917, 71)
    


```python
all_df['Total_Bathrooms'] = (all_df['FullBath'] + (0.5 * all_df['HalfBath']) + all_df['BsmtFullBath'] + (0.5 * all_df['BsmtHalfBath']))
all_df['Total_porch_sf'] = (all_df['OpenPorchSF'] + all_df['3SsnPorch'] + all_df['EnclosedPorch'] + all_df['ScreenPorch'])
all_df = all_df.drop(['FullBath', 'HalfBath', 'BsmtFullBath', 'BsmtHalfBath', 'OpenPorchSF', '3SsnPorch', 'EnclosedPorch', 'ScreenPorch'], axis=1)
print(all_df.shape)
```

    (2917, 65)
    


```python
num_all_vars = list(train.select_dtypes(include=[np.number]))
year_feature = []
for var in num_all_vars:
  if 'Yr' in var:
    year_feature.append(var)
  elif 'Year' in var:
    year_feature.append(var)
  else:  
    print(var, "is not related with Year")
print(year_feature)
```

    MSSubClass is not related with Year
    LotFrontage is not related with Year
    LotArea is not related with Year
    OverallQual is not related with Year
    OverallCond is not related with Year
    MasVnrArea is not related with Year
    BsmtFinSF1 is not related with Year
    BsmtFinSF2 is not related with Year
    BsmtUnfSF is not related with Year
    TotalBsmtSF is not related with Year
    1stFlrSF is not related with Year
    2ndFlrSF is not related with Year
    LowQualFinSF is not related with Year
    GrLivArea is not related with Year
    BsmtFullBath is not related with Year
    BsmtHalfBath is not related with Year
    FullBath is not related with Year
    HalfBath is not related with Year
    BedroomAbvGr is not related with Year
    KitchenAbvGr is not related with Year
    TotRmsAbvGrd is not related with Year
    Fireplaces is not related with Year
    GarageCars is not related with Year
    GarageArea is not related with Year
    WoodDeckSF is not related with Year
    OpenPorchSF is not related with Year
    EnclosedPorch is not related with Year
    3SsnPorch is not related with Year
    ScreenPorch is not related with Year
    PoolArea is not related with Year
    MiscVal is not related with Year
    MoSold is not related with Year
    ['YearBuilt', 'YearRemodAdd', 'GarageYrBlt', 'YrSold']
    


```python
fig, ax = plt.subplots(3, 1, figsize=(10, 6), sharex=True, sharey=True)
for i, var in enumerate(year_feature):
  if var != 'YrSold':
    ax[i].scatter(train[var], y, alpha=0.3)
    ax[i].set_title('{}'.format(var), size=15)
    ax[i].set_ylabel('SalePrice', size=15, labelpad=12.5)
plt.tight_layout()
plt.show()
```


    
![png](output_40_0.png)
    



```python
all_df = all_df.drop(['YearBuilt', 'GarageYrBlt'], axis=1)
print(all_df.shape)
```

    (2917, 63)
    


```python
YearsSinceRemodel = train['YrSold'].astype(int) - train['YearRemodAdd'].astype(int)

fig, ax = plt.subplots(figsize=(10, 6))
ax.scatter(YearsSinceRemodel, y, alpha=0.3)
fig.show()
```


    
![png](output_42_0.png)
    



```python
all_df['YearsSinceRemodel'] = all_df['YrSold'].astype(int) - all_df['YearRemodAdd'].astype(int)
all_df = all_df.drop(['YrSold', 'YearRemodAdd'], axis=1)
print(all_df.shape)
```

    (2917, 62)
    

### 더미 변수


```python
all_df['PoolArea'].value_counts()
```




    0.000000    2904
    4.721829       1
    5.913421       1
    6.161330       1
    5.854879       1
    5.786591       1
    5.553561       1
    5.843016       1
    6.048366       1
    5.130821       1
    6.231252       1
    5.945809       1
    5.922801       1
    5.718338       1
    Name: PoolArea, dtype: int64




```python
def count_dummy(x):
  if x > 0:
    return 1
  else:
    return 0
```


```python
all_df['PoolArea'] = all_df['PoolArea'].apply(count_dummy)
all_df['PoolArea'].value_counts()
```




    0    2904
    1      13
    Name: PoolArea, dtype: int64




```python
all_df['GarageArea'] = all_df['GarageArea'].apply(count_dummy)
all_df['GarageArea'].value_counts()
```




    1    2760
    0     157
    Name: GarageArea, dtype: int64




```python
all_df['Fireplaces'] = all_df['Fireplaces'].apply(count_dummy)
all_df['Fireplaces'].value_counts()
```




    1    1497
    0    1420
    Name: Fireplaces, dtype: int64



### Label Encoding, Ordinal Encoding, One-Hot Encoding


```python
from sklearn.preprocessing import LabelEncoder
import pandas as pd

temp = pd.DataFrame({'Food_Name': ['Apple', 'Chicken', 'Broccoli'], 
                     'Calories': [95, 231, 50]})

encoder = LabelEncoder()
encoder.fit(temp['Food_Name'])
labels = encoder.transform(temp['Food_Name'])
print(list(temp['Food_Name']), "==>", labels)
```

    ['Apple', 'Chicken', 'Broccoli'] ==> [0 2 1]
    


```python
from sklearn.preprocessing import OrdinalEncoder
import pandas as pd

temp = pd.DataFrame({'Food_Name': ['Apple', 'Chicken', 'Broccoli'], 
                     'Calories': [95, 231, 50]})

encoder = OrdinalEncoder()
labels = encoder.fit_transform(temp[['Food_Name']])
print(list(temp['Food_Name']), "==>", labels.tolist())
```

    ['Apple', 'Chicken', 'Broccoli'] ==> [[0.0], [2.0], [1.0]]
    


```python
import pandas as pd
temp = pd.DataFrame({'Food_Name': ['Apple', 'Chicken', 'Broccoli'], 
                     'Calories': [95, 231, 50]})

temp[['Food_No']] = temp.Food_Name.replace(to_replace = ['Chicken', 'Broccoli', 'Apple'], 
                       value = [1, 2, 3])

print(temp[['Food_Name', 'Food_No']])
```

      Food_Name  Food_No
    0     Apple        3
    1   Chicken        1
    2  Broccoli        2
    


```python
import pandas as pd

temp = pd.DataFrame({'Food_Name': ['Apple', 'Chicken', 'Broccoli'], 
                     'Calories': [95, 231, 50]})

temp = pd.get_dummies(temp)
print(temp)
print(temp.shape)
```

       Calories  Food_Name_Apple  Food_Name_Broccoli  Food_Name_Chicken
    0        95                1                   0                  0
    1       231                0                   0                  1
    2        50                0                   1                  0
    (3, 4)
    


```python
all_df = pd.get_dummies(all_df).reset_index(drop=True)
all_df.shape
```




    (2917, 258)



## 머신러닝 모형 학습 및 평가

#### 데이터셋 분리 및 교차 검증



```python
X = all_df.iloc[:len(y), :]
X_test = all_df.iloc[len(y):, :]
X.shape, y.shape, X_test.shape
```




    ((1458, 258), (1458,), (1459, 258))




```python
from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size = 0.25, random_state = 0)
X_train.shape, X_test.shape, y_train.shape, y_test.shape
```




    ((1093, 258), (365, 258), (1093,), (365,))



### 평가지표


#### MAE


```python
import numpy as np

def mean_absolute_error(y_true, y_pred):

  error = 0
  for yt, yp in zip(y_true, y_pred):
    error = error + np.abs(yt-yp)
  
  mae = error / len(y_true)
  return mae
```

#### MSE


```python
import numpy as np

def mean_squared_error(y_true, y_pred):

  error = 0
  for yt, yp in zip(y_true, y_pred):
    error = error + (yt - yp) ** 2
  
  mse = error / len(y_true)
  return mse
```

#### RMSE


```python
import numpy as np

def root_rmse_squared_error(y_true, ypred):
  error = 0
  
  for yt, yp in zip(y_true, y_pred):
    error = error + (yt - yp) ** 2
  
  mse = error / len(y_true)
  rmse = np.round(np.sqrt(mse), 3)
  return rmse
```

#### Test1


```python
y_true = [400, 300, 800]
y_pred = [380, 320, 777]

print("MAE:", mean_absolute_error(y_true, y_pred))
print("MSE:", mean_squared_error(y_true, y_pred))
print("RMSE:", root_rmse_squared_error(y_true, y_pred))
```

    MAE: 21.0
    MSE: 443.0
    RMSE: 21.048
    

#### Test2


```python
y_true = [400, 300, 800, 900]
y_pred = [380, 320, 777, 600]

print("MAE:", mean_absolute_error(y_true, y_pred))
print("MSE:", mean_squared_error(y_true, y_pred))
print("RMSE:", root_rmse_squared_error(y_true, y_pred))
```

    MAE: 90.75
    MSE: 22832.25
    RMSE: 151.103
    

#### RMSE with Sklean


```python
from sklearn.metrics import mean_squared_error

def rmsle(y_true, y_pred):
    return np.sqrt(mean_squared_error(y_true, y_pred))
```

### 모형 정의 및 검증 평가


```python
from sklearn.metrics import mean_squared_error
from sklearn.model_selection import KFold, cross_val_score
from sklearn.linear_model import LinearRegression

def cv_rmse(model, n_folds=5):
    cv = KFold(n_splits=n_folds, random_state=42, shuffle=True)
    rmse_list = np.sqrt(-cross_val_score(model, X, y, scoring='neg_mean_squared_error', cv=cv))
    print('CV RMSE value list:', np.round(rmse_list, 4))
    print('CV RMSE mean value:', np.round(np.mean(rmse_list), 4))
    return (rmse_list)

n_folds = 5
rmse_scores = {}
lr_model = LinearRegression()
```


```python
score = cv_rmse(lr_model, n_folds)
print("linear regression - mean: {:.4f} (std: {:.4f})".format(score.mean(), score.std()))
rmse_scores['linear regression'] = (score.mean(), score.std())
```

    CV RMSE value list: [0.139  0.1749 0.1489 0.1102 0.1064]
    CV RMSE mean value: 0.1359
    linear regression - mean: 0.1359 (std: 0.0254)
    

### 첫번째 최종 예측 값 제출


```python
from sklearn.model_selection import cross_val_predict

X = all_df.iloc[:len(y), :]
X_test = all_df.iloc[len(y):, :]
X.shape, y.shape, X_test.shape

lr_model_fit = lr_model.fit(X, y)
final_preds = np.floor(np.expm1(lr_model_fit.predict(X_test)))
print(final_preds)
```

    [117164. 158072. 187662. ... 173438. 115451. 219376.]
    


```python
submission = pd.read_csv("sample_submission.csv")
submission.iloc[:,1] = final_preds
print(submission.head())
submission.to_csv("The_first_regression.csv", index=False)
```

         Id  SalePrice
    0  1461   117164.0
    1  1462   158072.0
    2  1463   187662.0
    3  1464   197265.0
    4  1465   199692.0
    

### 모형 알고리즘 추가


```python
from sklearn.ensemble import RandomForestRegressor, GradientBoostingRegressor
from sklearn.tree import DecisionTreeRegressor
from sklearn.linear_model import LinearRegression

# LinearRegresison
lr_model = LinearRegression()

# Tree Decision 
tree_model = DecisionTreeRegressor()

# Random Forest Regressor
rf_model = RandomForestRegressor()

# Gradient Boosting Regressor
gbr_model = GradientBoostingRegressor()
```


```python
score = cv_rmse(lr_model, n_folds)
print("linear regression - mean: {:.4f} (std: {:.4f})".format(score.mean(), score.std()))
rmse_scores['linear regression'] = (score.mean(), score.std())
```

    CV RMSE value list: [0.139  0.1749 0.1489 0.1102 0.1064]
    CV RMSE mean value: 0.1359
    linear regression - mean: 0.1359 (std: 0.0254)
    


```python
score = cv_rmse(tree_model, n_folds)
print("Decision Tree Regressor - mean: {:.4f} (std: {:.4f})".format(score.mean(), score.std()))
rmse_scores['Decision Tree Regressor'] = (score.mean(), score.std())
```

    CV RMSE value list: [0.2048 0.208  0.2264 0.1801 0.1876]
    CV RMSE mean value: 0.2014
    Decision Tree Regressor - mean: 0.2014 (std: 0.0163)
    


```python
score = cv_rmse(rf_model, n_folds)
print("RandomForest Regressor - mean: {:.4f} (std: {:.4f})".format(score.mean(), score.std()))
rmse_scores['RandomForest Regressor'] = (score.mean(), score.std())
```

    CV RMSE value list: [0.1514 0.1555 0.144  0.138  0.1283]
    CV RMSE mean value: 0.1434
    RandomForest Regressor - mean: 0.1434 (std: 0.0097)
    


```python
score = cv_rmse(gbr_model, n_folds)
print("Gradient Boosting Regressor - mean: {:.4f} (std: {:.4f})".format(score.mean(), score.std()))
rmse_scores['Gradient Boosting Regressor'] = (score.mean(), score.std())
```

    CV RMSE value list: [0.1318 0.1377 0.1328 0.1223 0.1147]
    CV RMSE mean value: 0.1279
    Gradient Boosting Regressor - mean: 0.1279 (std: 0.0083)
    


```python
fig, ax = plt.subplots(figsize=(10, 6))

ax = sns.pointplot(x=list(rmse_scores.keys()), y=[score for score, _ in rmse_scores.values()], markers=['o'], linestyles=['-'], ax=ax)
for i, score in enumerate(rmse_scores.values()):
    ax.text(i, score[0] + 0.002, '{:.6f}'.format(score[0]), horizontalalignment='left', size='large', color='black', weight='semibold')

ax.set_ylabel('Score (RMSE)', size=20, labelpad=12.5)
ax.set_xlabel('Model', size=20, labelpad=12.5)
ax.tick_params(axis='x', labelsize=13.5, rotation=10)
ax.tick_params(axis='y', labelsize=12.5)
ax.set_ylim(0, 0.25)
ax.set_title('Rmse Scores of Models without Blended_Predictions', size=20)

fig.show()
```


    
![png](output_85_0.png)
    


RMSE 가 적은 것이 좋다. : 예측이 잘 된 Model이라고 할 수 있다. 


```python
lr_model_fit = lr_model.fit(X, y)
tree_model_fit = tree_model.fit(X, y)
rf_model_fit = rf_model.fit(X, y)
gbr_model_fit = gbr_model.fit(X, y)

def blended_learning_predictions(X): 
  blended_score = (0.3 * lr_model_fit.predict(X)) + \
  (0.1 * tree_model_fit.predict(X)) + \
  (0.3 * gbr_model_fit.predict(X)) + \
  (0.3* rf_model_fit.predict(X))
  return blended_score
```


```python
blended_score = rmsle(y, blended_learning_predictions(X))
rmse_scores['blended'] = (blended_score, 0)
print('RMSLE score on train data:')
print(blended_score)
```

    RMSLE score on train data:
    0.06264515382340667
    


```python
fig, ax = plt.subplots(figsize=(10, 6))

ax = sns.pointplot(x=list(rmse_scores.keys()), y=[score for score, _ in rmse_scores.values()], markers=['o'], linestyles=['-'], ax=ax)
for i, score in enumerate(rmse_scores.values()):
    ax.text(i, score[0] + 0.002, '{:.6f}'.format(score[0]), horizontalalignment='left', size='large', color='black', weight='semibold')

ax.set_ylabel('Score (RMSE)', size=20, labelpad=12.5)
ax.set_xlabel('Model', size=20, labelpad=12.5)
ax.tick_params(axis='x', labelsize=13.5, rotation=10)
ax.tick_params(axis='y', labelsize=12.5)
ax.set_ylim(0, 0.25)

ax.set_title('Rmse Scores of Models with Blended_Predictions', size=20)

fig.show()
```


    
![png](output_89_0.png)
    



```python
submission.iloc[:,1] = np.floor(np.expm1(blended_learning_predictions(X_test)))
submission.to_csv("The_second_regression.csv", index=False)
```
