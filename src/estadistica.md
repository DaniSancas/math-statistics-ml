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

\pagebreak

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

# Distribuciones de probabilidad

Esencialmente, la probabilidad es una medida entre cero y uno relativa a la posibilidad de que algo o algún evento pueda ocurrir. Y la probabilidad de todos los resultados posibles debe ser igual a 1.

La discusión sobre la probabilidad no está completa sin tratar las variables aleatorias. Una variable aleatoria es una cantidad cuyos posibles valores dependen de alguna manera claramente definida de un conjunto de algunos eventos aleatorios. Es una función que traza resultados, es decir, puntos en un espacio de probabilidad. 

Así, el espacio de probabilidad es esencialmente todos los resultados posibles. Y la distribución de probabilidad es un modelo teórico que representa los posibles valores que puede asumir cualquier variable aleatoria junto con la probabilidad de que ocurra. 

Ilustrando el ejemplo con 2 dados de 6 caras. Tendremos un espacio de probabilidad de 36. Si queremos obtener un 1 en el primer dado y un 2 en el segundo tendremos $\frac{1}{36}$ probabilidades. Sin embargo, si queremos simplemente obtener un 3 (ya sea 1+2 o 2+1) nuestra probabilidad será $\frac{2}{36}$. El número máximo más frecuente que se puede tener como suma de 2 dados es el 7, y la probabilidad es de $\frac{6}{36}$ y de nuevo va disminuyendo a partir de la intención de obtener un 8 (cuya probabilidad es $\frac{5}{36}$) hasta la última posiblidad, que es obtener un 12 con 2 dados (cuya probabilidad es $\frac{1}{36}$, al igual que obtener un 2 con 2 dados).

![Espacio de distribución de probabilidad en el juego "Lucky 7"](src/img/lucky_7_probability_distribution_space.png)

\pagebreak

Función de distribución acumulativa: Probabilidad de obtener algún número o
menos de algún número. $Prob <= x$

![Función de distribución de probabilidad en el juego "Lucky 7"](src/img/lucky_7_cumulative_distribution_function.png)

\pagebreak

## Hipótesis nula e hipótesis alternativa

La **hipótesis nula**, a menudo expresada como $H_0$ implica que 2 posibilidades son en realidad la misma, y que las diferencias entre ambas son por puro azar. Por ejemplo: La media de salarios de EEUU y Canadá es la misma. Se expresaría de la siguiente manera:

$$
H_0: \mu_{usa} = \mu_{ca}
$$

La **hipótesis alternativa** es la afirmación que se intenta probar contra la nula, y se expresa como $H_1$ o $H_a$. Siguiendo con el ejemplo, la hipótesis alternativa es que la media de salarios de EEUU y Canadá difiere (ya sea que $\mu_{usa} > \mu_{ca}$ o $\mu_{usa} < \mu_{ca}$). Se expresaría de la siguiente manera:

$$
H_0: \mu_{usa} \neq \mu_{ca}
$$

Para probar ambas hipótesis, se debe elegir correctamente una muestra de la población, ya que podría decantar el resultado hacia un lado u otro.

Por ejemplo:

- $H_0$: El peso de todos los productos de la empresa es el mismo.
- $H_1$: El peso de los productos difiere.

Sobre una población de 1.000 productos totales, podemos escoger una muestra de 10 productos, pero debemos poner especial cuidado para no elegirlos todos del mismo lote/día/máquina/fábrica, ya que podría fácilmente probar la hipótesis nula si justo la muestra escogida reporta los mismos pesos (por ejemplo, porque dicha máquina es muy precisa, pero otras máquinas de la fábrica no).

Una vez seleccionada correctamente la muestra, si resulta que todos los productos tienen el mismo peso, se habrá probado la hipótesis nula $H_0$. Por el contrario, si observamos diferentes pesos en la muestra, daremos por probada la hipótesis alternativa $H_1$.

## Alfa ($\alpha$) y p-value

**Alfa ($\alpha$)** también se conoce como el **nivel de significancia**. Es la probabilidad de rechazar la hipótesis nula cuando la hipótesis nula es verdadera. El valor utilizado suele ser del 5%. Esto significa que, en una población o muestra dada, si calculamos un rango de valores en el que se encuentra la media, 5 de cada 100 veces, este rango de valores no contendrá los valores medios, pero podríamos haber dicho que sí. El valor alfa es el riesgo que está dispuesto a aceptar si se equivoca, significa la región de rechazo y no se aceptará ningún valor que se encuentre dentro de esta región. 

Dependiendo del caso de uso, puede estar dispuesto a llegar hasta el 20%. Eso significa que está de acuerdo con las consecuencias de rechazar falsamente la hipótesis nula el 20% de las veces. En un campo como la medicina, estableceremos el nivel de significancia lo más bajo posible, por ejemplo 0.1% si hubo daño potencial a los pacientes; en este caso, no podemos permitirnos dejar margen de error.

![Regiones de rechazo para diferentes tipos de pruebas](src/img/alpha_rejection_region.jpg)

En los casos de una prueba de dos colas, la región de rechazo en ambas colas se suma al valor total de alfa, es decir, si $\alpha = 5%$, la región de rechazo en ambas colas será del 2.5% cada una.

El **p-value** es un valor calculado y un resultado que se obtiene como parte de la realización de su prueba de hipótesis. Dependiendo de la prueba, el cálculo variará. El p-value se puede interpretar como la probabilidad de obtener un resultado tan extremo o más extremo cuando la hipótesis nula es verdadera, es decir, la probabilidad de observar ese valor de muestra particular si la hipótesis nula fuera verdadera. Por lo tanto, si el p-value es menor que su nivel de significancia, rechazará la hipótesis nula. Por ejemplo:

$$
H_0: \mu = 100
$$
$$
H_1: \mu > 100
$$

Si realiza una prueba y obtiene un p-value de 0.02, esto significa que hay un 2% de probabilidad de obtener un valor de 100 o más de 100. Si elegimos un valor de significancia ($\alpha$) del 5%, **rechazaremos** la hipótesis nula, porque el 2% es menos del 5%. Si elegimos un valor de significancia del 1%, **no podremos rechazar** la hipótesis nula porque el 2% es mayor que el 1%.

Para usar tanto el p-value como el nivel de significancia juntos, hay que decidir un p-valueara $\alpha$ después de enunciar su hipótesis. Supongamos que es $\alpha = 0.10$ (o 10%). A continuación, se recogen los datos y se calcula el p-value. Si el p-value es mayor que $\alpha$, se asume que la hipótesis nula es verdadera y no la rechaza. Si el p-value es menor que $\alpha$, se asume que la hipótesis nula es falsa y la rechaza. 

$p-value > \alpha: H_0$ es verdadera (no se rechaza)

$p-value < \alpha: H_0$ es falsa (se rechaza)

En los casos en que el p-value y los niveles de significancia son aproximadamente iguales, por ejemplo $p-value = 0.11$, se deberá decidir echazar o no rechazar, o se puede decidir volver a muestrear y recopilar más datos.

En resumen: El p-value es la probabilidad de observar un resultado igual o más extremo que el actual, condicionado a que la hipótesis nula ($H_0$) sea cierta. Cuando es muy pequeño, lo que decimos es que la probabilidad de observar estos datos es muy baja si la $H_0$ fuera cierta, así que la descartamos.

## Distribución normal

Una distribución normal es una curva de densidad con forma de campana descrita por su media $\mu$ y desviación estándar $\sigma$. La curva es simétrica y centrada alrededor de su media. 

La característica principal de una distribución normal es su curva en forma de campana. Se define mediante la siguiente fórmula:

$$
f(x, \mu, \sigma) = \frac{1}{\sigma\sqrt{2\pi}} 
\exp -\left(\frac{(x-\mu)^2}{2\sigma^2}\right)\,
$$

Donde:
- $x$ es un valor de nuestro conjunto de datos
- $\mu$ es la media de nuestro conjunto de datos.
- $\sigma$ es la desviación estándar de nuestro conjunto de datos.

En el caso de la distribución normal estándar se simplifica la función, ya que se asumen los siguiente parámetros:

$$
\mu = 0, \sigma = 1
$$

Por lo tanto:

$$
f(x, 0, 1) = \frac{1}{\sqrt{2\pi}} 
\exp -\left(\frac{x^2}{2}\right)\,
$$

Podemos representar una distribución normal de manera sencilla en Python. El siguiente código:

```python
import numpy as np
import matplotlib.pyplot as plt
from scipy.stats import norm

# Plot between -4 and 4 with 0.1 steps
x_axis = np.arrange(-4, 4, 0.1)
# mean = 0, sd = 1
plt.plot(x_axis, norm.pdf(x_axis, 0, 1))
plt.show()
```

Producirá la siguiente imagen:

![Distribución normal](src/img/bell_curve.png)

## Distribución $T$ y t-test

La distribución T, también conocida como *distribución T de Student*, es un tipo de distribución de probabilidad similar a la distribución normal con su forma de campana, pero con colas más gruesas. Las distribuciones T tienen una mayor probabilidad de valores extremos que las distribuciones normales, de ahí sus colas más gruesas.

Un t-test es un tipo de estadística inferencial que se utiliza para determinar si existe una diferencia significativa entre las medias de dos grupos, que pueden estar relacionados en ciertas características. Se utiliza sobre todo cuando los conjuntos de datos, como el conjunto de datos registrado como resultado de lanzar una moneda 100 veces, siguen una distribución normal y pueden tener varianzas desconocidas. El t-test se utiliza como herramienta de comprobación de hipótesis, que permite comprobar una hipótesis aplicable a una población.

Supongamos que queremos comprobar si existe una diferencia en la evaluación de profesores hombres y mujeres.

Presentamos nuestra hipótesis:

- Hipótesis nula: $\mu_m = \mu_h$ (no hay diferencia en la evaluación de ambos géneros)
- Hipótesis alternativa: $\mu_m \neq \mu_h$ (existe diferencia en la evaluación de ambos géneros)
- Establecemos alfa: $\alpha$ = 0.05

Utilizamos la librería de funciones estadísticas para hallar el p-value.

```python
import scipy.stats

scipy.stats.ttest_ind(
	ratings_df[ratings_df['gender'] == 'female']['eval'],
	ratings_df[ratings_df['gender'] == 'male']['eval'],
)
# Ttest_indResult(statistic=-3.249937943510772, pvalue=0.0012387609449522217)
```

Dado que el p-value (0.001) es menor que $\alpha$ (0.05) rechazamos la hipótesis nula, ya que hay suficientes pruebas de que existe una diferencia estadística en las evaluaciones docentes en función del género.

## Estandarización de variables aleatorias normales

Dada la propiedad de una distribución normal que afirma que *una distribución normal es simétrica respecto de su media*, es posible relacionar todas las variables aleatorias normales con la distibución normal estándar: (media) $\mu = 0$ y (desviación estándar) $\sigma = 1$.

Es decir, dado:

$$
X \sim N(\mu, \sigma^2)
$$

obtenemos:

$$
Z \sim N(0, 1)
$$

mediante la fórmula:

$$
z = \frac{x - \mu}{\sigma}
$$

Donde $z$ (z-score) es la variable aleatoria normal estandarizada de $x$.

Explicado con un ejemplo: Si dada una distribución normal (no estándar) con (media) $\mu = 5$ y (desviación estándar) $\sigma = 3$, queremos saber la probablidad de que una variable aleatoria sea menor que 5.9, expresado como $P(X < 5.9)$. Teniendo una tabla de probabilidades de una distribución normal estándar, primero debemos estandarizar nuestras variables.

Por lo tanto, dada una (variable aleatoria) $x = 5.9$:

$$
z = \frac{x - \mu}{\sigma} = \frac{5.9 - 5}{3} = 0.3
$$

Por lo tanto $P(Z < 0.3)$. Es decir: La probabilidad de que $x$ sea menor que 5.9 en nuestra distribución normal (no estándar) es igual a la probabilidad de que $z$ sea menor que 0.3 en una distribución normal estándar.

Una vez obtenida $z$, podemos consultar una tabla de equivalencias para una distribución normal estándar:

![Tabla de equivalencias para una distribución normal estándar](src/img/normal_dist_table.png)

Buscamos el valor que corresponda a $z = 0.3$, y obtenemos $0.61791$. Por lo tanto, la probabilidad de que $z$ valga menos de $0.3$ en una distribución normal estándar es de $0.61791$:

$$
P(Z < 0.3) = 0.61791
$$

Y por tanto la probabilidad de que $x$ valga menos de $5.9$ en nuestra distribución normal original (no estándar) es también de $0.61791$:

$$
P(X < 5.9) = 0.61791
$$

Esto implica que hay un $61.791\%$ de probabilidades de que $x$ valga menos de $5.9$. Si quisiéramos expresarlo visualmente sería algo similar a la siguiente imagen:

![Áreas bajo la distribución de probabilidad normal](src/img/prob_normal_dist.gif)

**Usos de la tabla de equivalencias**: Si en vez de hallar $P(Z < 0.3)$ quisiéramos hallar $P(Z < 0.309)$, lo redondearíamos a $P(Z < 0.31)$, y en este caso al ser $0.3 + 0.01$ nos desplazaríamos a la siguiente columna de la tabla. Por lo tanto: $P(Z < 0.31) = 0.62172$.

Podemos hallar probabilidades en Python utilizando la librería de funciones estadísticas.

```python
import scipy.stats

x = 5.9
mean = 5
std = 3

scipy.stats.norm.cdf((x - mean) / std)
# 0.61791
```

### Obtener $\sigma$ a partir de $\mu$ y p-value

Las z-scores son desviaciones estándar. Si, por ejemplo, una herramienta devuelve una z-score de $+2.5$, diría que el resultado son desviaciones estándar de $2.5$ Tanto las z-scores como los p-values se asocian con la distribución normal estándar como se muestra a continuación.

![Valores de confianza](src/img/significance_level.png)

Como resumen de valores de confianza:

| z-score (Desviaciones estándar) | p-value (Probabilidad) | Nivel de confianza |
|--------------------------------------|------------------------|--------------------|
| < -1.65 o > +1.65                    | < 0.10                 | 90 %               |
| < -1.96 o > +1.96                    | < 0.05                 | 95 %               |
| < -2.58 o > +2.58                    | < 0.01                 | 99 %               |

Ilustrado con un ejemplo práctico: Los ingresos semanales de los conductores de autobuses se distribuyen normalmente con una media de $\$395$. Si solo el $0.84\%$ de los conductores de autobuses tiene un ingreso semanal de más de $\$429.35$, hallar la desviación estándar de los ingresos semanales de los conductores de autobús.

Por lo tanto, dados $\mu = 395$ y p-value = $0.0084$, hallar $\sigma$ (desviación estándar):

En este caso, como queremos obtener el valor de la cola de la derecha (solo el $0.84\%$ tiene un ingreso MAYOR), nuestra z-score será $>2.58$, dado que es el valor que le corresponde a un p-value $< 0.01$.

Dada la fórmula:
$$
z = \frac{x - \mu}{\sigma}
$$

Sustituimos:
$$
2.58 = \frac{429.35 - 395}{\sigma}
$$

Y resolvemos:
$$
\sigma = \frac{429.35 - 395}{2.58} = 13.31
$$

Este valor es aproximado ya que no se trata de un valor ajustado del todo.

## Ejercicio de resumen

Para comprobar la hipótesis de que dormir al menos 8 horas hace a uno mas inteligente, a 12 personas que han dormido al menos 8 horas durante el último año, se les ha hecho un prueba de inteligencia.

Estos son los resultados: $116, 111, 101, 120, 99, 94, 106, 115, 107, 101, 110, 92$.

Probar usando las siguientes hipótesis: 

$$
H_0: \mu = 100
$$
$$
H_a: \mu > 100
$$

Sabiendo que la media de la población total es 100, y la desviación típica de la población es 10:
$$
\mu = 100, \sigma = 10
$$

En vez de usar la fórmula:

$$
z = \frac{x - \mu}{\sigma}
$$

Dado que se trata de una muestra usaremos la siguiente fórmula para hallar el z-score:

$$
z = \frac{\bar{x} - \mu}{\frac{\sigma}{\sqrt{n}}}
$$


```python
import scipy.stats

poblation_mean = 100
poblation_sd = 10
data_8h = np.array(
	[116, 111, 101, 120, 99, 94, 106, 115, 107, 101, 110, 92]
)

n = data_8h.size  # 12
data_8h_mean = round(data_8h.mean(), 3)  # 106.0

# Para hallar p-value, restamos 1 menos el resultado, ya que 
#   queremos obtener valores MAYORES QUE 100
# Por defecto se halla la probabilidad de que Z sea MENOR QUE 
#   un valor
z = scipy.stats.norm.cdf(
	(data_8h_mean - poblation_mean)/(poblation_sd/sqrt(n))
)
round(1 - z, 5)
# p-value = 0.01883
```

Dado que p-value ($0.01883$) es menor que alfa ($0.05$), rechazamos la hipótesis nula al no haber evidencia suficiente que la soporte. Es decir: la probabilidad de observar estos datos en un universo en el que la hipótesis nula fuera cierta, es de un $1.883\%$. Dado que es inferior al $5\%$ fijado ($\alpha$), descartamos la hipótesis nula.