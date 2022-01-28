% Estadística

\pagebreak

# Conceptos básicos de estadística descriptiva

## Medidas de tendencia central

Las medidas de tendencia central son las que más se utilizan en el análisis estadístico. Las conocemos como media, mediana y moda.

### Media

Aunque pueden diferir en la notación, esencialmente la media de una población y de una muestra es la misma. Es la suma de todas las observaciones, entonces, se divide por el número de observaciones para obtener la media, que llamamos promedio.

Media de la población:
$$
\mu = \frac{\sum_{i=1}^{N}x_i}{N}
$$

Media de la muestra:
$$
\bar x = \frac{\sum_{i=1}^{n}x_i}{n}
$$

Por lo tanto, dado un conjunto de datos:
$$
\{10, 7, 4, 6, 8, 10, 10, 9\}
$$

La media se calculará como:

$$
\bar x = \frac{10+7+4+6+8+10+10+9}{8} = \frac{64}{8} = 8
$$

El cálculo de la media puede aplicar a variables contínuas. La media se puede ver afectada por observaciones excesivamente grandes o pequeñas (outliers).

Una de las características de la media es que si se toma la diferencia entre el valor medio de una variable, y se resta de todas las observaciones y se suma, esa suma sería igual a cero.

$$
\sum(x_i-\bar x) = 0
$$

Dado el ejemplo anterior:

$$
\sum(x_i-\bar x) = (10-8) + (7-8) + (4-8) + (6-8) + (8-8) + (10-8) + (10-8) + (9-8) = 0
$$

### Mediana

La mediana se representa como $M_e$. Es el valor que queda en medio cuando ordenamos nuestra observación de menor a mayor. Esto da como resultado el mismo número de datos observados por encima y por debajo de la mediana.

La mediana es única para cada conjunto de datos. No se ve afectada por extremos (outliers).

Por lo tanto, dado un conjunto de datos:
$$
\{10, 7, 4, 6, 8, 10, 10, 9\}
$$

Si la ordenamos de menor a mayor:
$$
\{4, 6, 7, 8, 9, 10, 10, 10\}
$$

La mediana caerá entre los valores centrales $8$ y $9$, por lo tanto:
$$
M_e = \frac{8+9}{2} = 8.5
$$

En caso de que el conjunto de datos fuera impar (por ejemplo $1, 3, 5$) la mediana sería el valor central (en este caso sería $3$).

### Moda

La mediana se representa como $M_0$. Es el valor que ocurre con más frecuencia. Es decir, el valor más común. Se puede hallar la moda para variables cualitativas y cuantitativas.

Por lo tanto, dado un conjunto de datos:
$$
\{10, 7, 4, 6, 8, 10, 10, 9\}
$$

La moda será:
$$
M_0 = 10
$$


## Medidas de dispersión

La dispersión, que también se denomina variabilidad o propagación, es la medida en que la distribución de los datos se extiende o comprime. Las medidas habituales de la dispersión son la varianza y la desviación estándar.

### Varianza

Al contrario que la diferencia entre la media de la población y la de la muestra, la diferencia entre la varianza de la población y la de la muestra es que cuando se calcula la varianza de la población, representada como sigma al cuadrado, se divide por el número total de observaciones. 

Estas son las desviaciones entre la observación y la media al cuadrado, que se suman y se dividen por el número total de observaciones. 

Varianza de la población:

$$
\sigma^2 = \frac{\sum_{i=1}^{N}(x_i - \mu)^2}{N}
$$

Para la varianza de la muestra se divide por $n-1$, para que la estimación no esté sesgada a largo plazo.

Varianza de la muestra:

$$
s^2 = \frac{\sum_{i=1}^{n}(x_i - \bar x)^2}{n-1}
$$

Eso significa que si tomamos una segunda muestra, obtendremos un valor diferente de $s^2$. Si tomamos una tercera muestra, obtendremos un tercer valor de $s^2$, y así sucesivamente.

Utilizamos $n-1$ para que la media de todos estos valores de $s^2$ sea igual a $\sigma^2$.

Por lo tanto, dado un conjunto de datos:
$$
\{10, 7, 4, 6, 8, 10, 10, 9\}
$$

Cuya media hallada en la sección anterior es $\mu = 8$ y la población es $N = 8$. Hallamos:

$$
\sigma^2 = \frac{\sum_{i=1}^{N}(x_i - \mu)^2}{N}
$$
$$
= \frac{(10-8)^2 + (7-8)^2 + (4-8)^2 + (6-8)^2 + (8-8)^2 + (10-8)^2 + (10-8)^2 + (9-8)^2}{8}
$$
$$
=\frac{2^2 -1^2 -4^2 -2^2 - 0^2 + 2^2 + 2^2 + 1^2}{8}
$$
$$
=\frac{4 + 1 + 16 + 4 + 0 + 4 + 4 + 1}{8}
$$
$$
\sigma^2 = 4.25 
$$


### Desviación estándar

La desviación estándar es la raíz cuadrada de la varianza. La varianza se representa en "unidades al cuadrado" para que la desviación estándar esté en las mismas unidades que $x$.

Desviación estándar de la población:

$$
\sigma = \sqrt{\frac{\sum_{i=1}^{N}(x_i - \mu)^2}{N}}
$$

Desviación estándar de la muestra:

$$
s = \sqrt{\frac{\sum_{i=1}^{n}(x_i - \bar x)^2}{n-1}}
$$

Por lo tanto, dado un conjunto de datos:
$$
\{10, 7, 4, 6, 8, 10, 10, 9\}
$$

Dada su varianza $\sigma^2 = 4.25$, hallamos la desviación estándar:
$$
\sigma = \sqrt{4.25} = 2.06
$$

### Rango

El Rango es el intervalo entre el valor máximo y el valor mínimo; por ello, comparte unidades con los datos. Permite obtener una idea de la dispersión de los datos, cuanto mayor es el rango, aún más dispersos están los datos (sin considerar la afectación de los valores extremos). El rango, también es llamado amplitud o recorrido de medida.

Se expresa de la siguiente manera:

$$
R = x_k - x_1
$$

Donde $x_1$ es el valor mínimo y $x_k$ el valor máximo del conjunto.

Por lo tanto, dado un conjunto de datos:
$$
\{10, 7, 4, 6, 8, 10, 10, 9\}
$$

Los datos ordenados corresponderían a:
$$
x_1 = 4, x_2 = 6, x_3 = 7, x_4 = 8, x_5 = 9, x_6 = 10, x_7 = 10, x_8 = 10
$$

Por lo tanto:
$$
R = x_8 - x_1 = 10 - 4 = 6
$$

# Visualización

## Tipos de variables

Podemos diferenciar variables categóricas y contínuas. 

Las variables **categóricas** presentan un número finito de categorías o grupos (por ejemplo "género"), mientras que las **contínuas** pueden presentar un número infinito de valores entre dos valores dados.

Dependiendo del tipo de variable (y el número) que se quiera mostrar existen algunas sugerencias de presentación.

![Sugerencia de presentación de visualización de datos.](https://extremepresentation.com/wp-content/uploads/6a00d8341bfd2e53ef0148c699cc96970c.jpg)

## Ilustrando parámetros estadísticos

Existen diferentes maneras de representar los datos, en función de las métricas que queramos mostrar. Algunos ejemplos:

- Histograma: Distribución y varianza.
- Diagramas de caja (box-plot): Media, mediana, cuartiles y valores atípicos (outliers).
- Gráfico de sectores (pie chart): Porcentajes del total.

Algunas gráficas son simples y fáciles de interpretar, sin embargo hay otras que requieren algo más de estudio, como por ejemplo el "box-plot".
![Ejemplo de box-plot](src/img/boxplot_explained.png)

\pagebreak

A continuación se presentan una serie de visualizaciones para un conjunto de datos similar a la siguiente muestra: 

```python
import numpy as np
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

sns.set(style="whitegrid")

ratings_url = (
	"https://cf-courses-data.s3.us.cloud-object-storage."
	"appdomain.cloud/IBMDeveloperSkillsNetwork-ST0151EN-"
	"SkillsNetwork/labs/teachingratings.csv"
)
ratings_df = pd.read_csv(ratings_url)


ratings_df[['tenure', 'age', 'gender', 'eval', 'division']].head(10)
```

|    | tenure  | age  | gender  | eval  | division |
|----|---------|------|---------|-------|----------|
| 0  | yes     | 36   | female  | 4.3   | upper    |
| 1  | yes     | 36   | female  | 3.7   | upper    |
| 2  | yes     | 36   | female  | 3.6   | upper    |
| 3  | yes     | 36   | female  | 4.4   | upper    |
| 4  | yes     | 59   | male    | 4.5   | upper    |
| 5  | yes     | 59   | male    | 4.0   | upper    |
| 6  | yes     | 59   | male    | 2.1   | upper    |
| 7  | yes     | 51   | male    | 3.7   | upper    |
| 8  | yes     | 51   | male    | 3.2   | upper    |
| 9  | yes     | 40   | female  | 4.3   | upper    |

\pagebreak

### Diagramas de barras

**Bar-plot**.

Promedio de las evaluaciones en ambos grupos de los niveles altos y bajos.

```python
ax = sns.barplot(
	x="division", 
	y="eval", 
	data=(
		ratings_df
		.groupby('division')[['eval']]
		.mean()
		.reset_index()
	)
)
```

![Ejemplo de bar-plot](src/img/barplot_example.png)

\pagebreak


### Diagramas de dispersión

**Scatter-plot** para diagramas de dispersión sencillos.

Diagrama de dispersión de la relación entre la edad y las puntuaciones de las evaluaciones, diferenciando entre géneros.

```python
ax = sns.scatterplot(
	x='age', 
	y='eval', 
	hue='gender',
	data=ratings_df
)
```

![Ejemplo de scatter-plot](src/img/scatterplot_example.png)

\pagebreak

**Rel-plot** para diagramas de dispersión más complejos.

Diagrama de dispersión de la relación entre la edad y las puntuaciones de las evaluaciones, diferenciando entre genero y tipo de jornada de trabajo.

```python
ax = sns.relplot(
	x="age", 
	y="eval", 
	hue="gender",
	row="tenure",
	data=ratings_df, 
	height=3, 
	aspect=2
)
```

![Ejemplo de rel-plot](src/img/relplot_example.png)

\pagebreak

### Diagramas de cajas

**Box-plot**.

Comparación de la edad con el tipo de jornada de trabajo y el género.

```python
ax = sns.boxplot(
	x="tenure", 
	y="age", 
	hue="gender",
	data=ratings_df
)
```

![Ejemplo de box-plot](src/img/boxplot_example.png)

\pagebreak

### Diagramas de categorías 

**Cat-plot**

Histograma de grupo de enseñanza por género, tipo de jornada de trabajo y tipo de división.

```python
ax = sns.catplot(
	x='gender', 
	hue='tenure', 
	row='division',
	kind='count',
	data=ratings_df,
	height=3, 
	aspect=2
)
```

![Ejemplo de cat-plot](src/img/catplot_example.png)

\pagebreak

### Diagramas de distribución

**Dist-plot**

```python
sns.distplot(
	ratings_df[ratings_df['gender'] == 'female']['eval'], 
	color='green', 
	kde=False
) 
sns.distplot(
	ratings_df[ratings_df['gender'] == 'male']['eval'], 
	color="orange", 
	kde=False
) 
plt.show()
```

![Ejemplo de dist-plot](src/img/distplot_example.png)

\pagebreak
