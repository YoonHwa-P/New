---
title : "\[ 받쓰 공부 \]_211105"
date : 2021-11-05 15:11:05

---

the-typical-kaggle-data-scientist-in-2021
## Kaggle Note로 받쓰하면서 공부하기 



```python
# This Python 3 environment, PKG Load
import numpy as np # linear algebra
import pandas as pd # data processing, CSV file I/O (e.g. pd.read_csv)

# Input data files : "../input/" 
# Running : Shift+Enter

import os
for dirname, _, filenames in os.walk('/kaggle/input'):
    for filename in filenames:
        print(os.path.join(dirname, filename))

# ~ 20GB ,/kaggle/temp/



```

<center style="font-size:200%; font-family:Hiragino Kaku Gothic Pro, sans-serif"><b> The Typical Kaggle Data Scientist in 2021</b></center>

<br><br>

<center style="font-size:200%; font-family:Hiragino Kaku Gothic Pro, sans-serif"> Remade By @YoonHwa-P</center>

<center><img src='https://www.gcppodcast.com/images/post/kaggle.png'></center>

HTML code는 Markdown 형식으로 넣을 수 있게 해 준다.

scr : [구글 팟케스트](https://www.gcppodcast.com/)에서 바로 연결하여 사용.


```python
import pandas as pd
import numpy as np
import seaborn as sns
import plotly.express as px
import plotly.graph_objects as go

import warnings
warnings.filterwarnings('ignore')



```

시각화, 계산을 위해 Pandas, Numpy, seaborn을 이용 할 것이고, 동적보드를 만들기 위해 plotly를 이용 하였다. 

plotly 중에서 Express와 Graph_objects를 가져와서 사용 할 예정인듯.

[plotly-express](https://plotly.com/python/plotly-express/)

The Plotly Express API in general offers the following features:

Every PX function returns a** plotly.graph_objects.Figure object**, so you can edit it using all the same methods like update_layout and add_trace.

input으로 Express를 사용 한다면  Graph_objects가 동적 plotly 를 만드는 것 같다. : update 하거나 trace를 가능 하게 하는듯.


실제 필사할  data에서는 어떤 data가 있는지 확인 해 보지 않았지만, 
나는 배우는 입장이니 어떤 data가 있는지, 어떤 head가 있는지 확인 해 보도록 한다. 

맨 위에 가보면 Note가 생성 될때 

    /kaggle/input/kaggle-survey-2021/kaggle_survey_2021_responses.csv
    /kaggle/input/kaggle-survey-2021/supplementary_data/kaggle_survey_2021_methodology.pdf
    /kaggle/input/kaggle-survey-2021/supplementary_data/kaggle_survey_2021_answer_choices.pdf

위와같은 file dir을 알려준다. 이제, pandas로 이 files를 로딩 시켜 주면된다. 

Ref. [Kaggle활용.국문](https://teddylee777.github.io/kaggle/kaggle%EC%97%90%EC%84%9C-%EC%A0%9C%EA%B3%B5%ED%95%98%EB%8A%94-notebook-%ED%99%9C%EC%9A%A9%ED%95%98%EA%B8%B0)



```python
df = pd.read_csv("../input/kaggle-survey-2021/kaggle_survey_2021_responses.csv")
df = df.iloc[1:, :] #이건 왜 선택 해 놓은 것일까요?
df.head()

df.info()



```

df에 pd.read_csv로 csv file을 읽어 옵니다. 

역시 pd인 df객체에 iloc을 이용하여 \[ 1행부터 : , : \] iloc를 선택 해 놓았다. 


1. 행번호(row number)로 선택하는 방법 **(.iloc)**
2. label이나 조건표현으로 선택하는 방법 (.loc)

Ref. [loc를 이용한 행 선택](https://azanewta.tistory.com/34)

<br>

<center style="font-size:300%; font-family:Hiragino Kaku Gothic Pro, sans-serif"> 0. Introduction</center>
<br>

<div style="font-size:130%; font-family:Hiragino Kaku Gothic Pro, sans-serif"> 
    
This notebook will explore the fascinating results obtained from the survey conducted by Kaggle in September 2021. Over 25,000 data scientists and ML engineers participated, providing information on their backgrounds and experience in their occupations. <br>

To increase readability, this report is divided into four sections: </div>
    
1. <div style="font-size:130%; font-family:Hiragino Kaku Gothic Pro, sans-serif">Demographics & Geographics</div>

2. <div style="font-size:130%; font-family:Hiragino Kaku Gothic Pro, sans-serif">Education & Occupation </div>

3. <div style="font-size:130%; font-family:Hiragino Kaku Gothic Pro, sans-serif">Knowledge & Skills</div>

4. <div style="font-size:130%; font-family:Hiragino Kaku Gothic Pro, sans-serif">Platforms & Media</div>

<br>

***

Introduction 
이 노트북은 25000 data scientist들과 ML Engineer들의 kaggle에서 경험 한것을 조사한 data를  매력적인 결과로 탐험 하게 될 것이다. 
(대충)

; Introduction 에서 이 notebook의 성격, data의 간간한 정보, 목차 등을 설명.


<center style="font-size:300%; font-family:Hiragino Kaku Gothic Pro, sans-serif"> 1. Demographics & Geographics</center>


모든 글은 Markdown을 이용한 css 로 작성 된 것 같다. 


```python

```

<blockquote><p style="font-size:130%; font-family:Hiragino Kaku Gothic Pro, sans-serif"><b> The most common industry is technology, with <span style="color:#5abbf9;">25% </span> of the respondents working on it, followed by the education industry, with <span style="color:#5abbf9;">20%</span>.</b><p></blockquote>

<center style="font-size:300%; font-family:Hiragino Kaku Gothic Pro, sans-serif"> 3. Knowledge & Skills</center>


```python
experience = (
    df['Q6']
    .value_counts()
    .to_frame()
    .reset_index()
    .rename(columns={'index':'Experience', 'Q6':'Count'})
    .replace(['I have never written code','< 1 years',
              '1-3 years', '3-5 years', '5-10 years',
              '10-20 years', '20+ years'], ['No experience', '<1 years',
                                        '1-3 years', '3-5 years', '5-10 years',
                                        '10-20 years', '20+ years'])
          ) 
```


```python
 df['Q6'].value_counts()  #여러개의 fuction을 사용 하기 위해서 괄호로 묶어서 사용 
```

1. .value_counts() : 데이터의 분포도를 확인하는데 매우 유용한 함수
  - column 값의 개수를 확인 하는것.
2. .to_frame() : 하
   .rename(columns={'index':'Experience', 'Q6':'Count'}) 
3. reset_index()
  - Index를 reset해 준다. 
  
  Ref. [판다스 함수](https://hun931018.tistory.com/19)


```python

```

## data 수집, 전처리 
Experience라는 Question 6에 해당하는 값을 전처리 해 준다. 




```python


experience['Experience'] = pd.Categorical(
                                        experience['Experience'], 
                                        ['No experience', '<1 years',
                                        '1-3 years', '3-5 years', '5-10 years',
                                        '10-20 years', '20+ years']
                                         )
                                         

experience['percent'] = ((experience['Count'] / experience['Count'].sum())*100).round(2).astype(str) + '%'

experience = experience.sort_values('Experience')

colors = ['#033351',] * 7
colors[1] = '#5abbf9'
colors[2] = '#5abbf9'
colors[3] = '#0779c3'
colors[4] = '#0779c3'


fig = go.Figure(go.Bar(
            y=experience['Count'],
            x=experience['Experience'],
            cliponaxis = False,
            text=experience['percent'],
            marker_color=colors
                        ))

fig.update_traces(texttemplate='%{text}', 
                  textposition='outside',
                  hovertemplate='<b>Experience</b>: %{x}<br><extra></extra>'+
                                '<b>Count</b>: %{y}',
                  textfont_size=12)
                  
fig.update_xaxes(showgrid=False)
fig.update_yaxes(showgrid=False)
 
fig.update_layout(showlegend=False, 
                  plot_bgcolor='#F7F7F7', 
                  margin=dict(pad=20),
                  paper_bgcolor='#F7F7F7',
                  height=500,
                  yaxis={'showticklabels': False},
                  yaxis_title=None,
                  xaxis_title=None,
                  title_text="<b>Experience</b> Distribution",
                  title_x=0.5,
                  font=dict(family="Hiragino Kaku Gothic Pro, sans-serif", size=14, color='#000000'),
                  title_font_size=35)

fig.add_annotation(dict(font=dict(size=14),
                                    x=0.98,
                                    y=-0.24,
                                    showarrow=False,
                                    text="@miguelfzzz",
                                    xanchor='left',
                                    xref="paper",
                                    yref="paper"))

fig.add_annotation(dict(font=dict(size=12),
                                    x=-0.03,
                                    y=-0.24,
                                    showarrow=False,
                                    text="Source: 2021 Kaggle Machine Learning & Data Science Survey",
                                    xanchor='left',
                                    xref="paper",
                                    yref="paper"))
fig.show()
```

df에 Q6이라는 value를 담았다. 


