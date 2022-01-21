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
10, 7, 4, 6, 8, 10, 10, 9
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
10, 7, 4, 6, 8, 10, 10, 9
$$

Si la ordenamos de menor a mayor:
$$
4, 6, 7, 8, 9, 10, 10, 10
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
10, 7, 4, 6, 8, 10, 10, 9
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
10, 7, 4, 6, 8, 10, 10, 9
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
10, 7, 4, 6, 8, 10, 10, 9
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
10, 7, 4, 6, 8, 10, 10, 9
$$

Los datos ordenados corresponderían a:
$$
x_1 = 4, x_2 = 6, x_3 = 7, x_4 = 8, x_5 = 9, x_6 = 10, x_7 = 10, x_8 = 10
$$

Por lo tanto:
$$
R = x_8 - x_1 = 10 - 4 = 6
$$
