% Regresión lineal

\pagebreak

Este método permite trazar la línea recta que mejor se ajusta o aproxima a un conjunto de datos en el plano $(x, y)$. Matemáticamente, en un espacio bidimensional, una recta se define de la siguiente manera[^fn1]: 
$$
\hat{y} = w_{0} + w_{1}x
$$
 <u>**Glosario**</u>:

- $\hat{y}$: Predicción en $y$ para un valor dado en $x$.
- $w_0$: Término independiente (intercepto o *bias*), muestra a qué altura la recta corta al eje $y$.
- $w_1$: Pendiente, define la inclinación de la recta.
- $n$: Número de datos conocidos del conjunto.
- $\bar x$ : Promedio de $x$ , expande a $\frac{\sum x}{n}$

# Solución mediante mínimos cuadrados

## Solución teórica

### Calcular sumatorios

Dado el siguiente conjunto:

| $x$  | $y$  |
| ---- | :--- |
| 7    | 2    |
| 1    | 9    |
| 10   | 2    |
| 5    | 5    |
| 4    | 7    |
| 3    | 11   |
| 13   | 2    |
| 10   | 5    |
| 2    | 14   |

Hallar:

- $\sum x$
- $\sum y$
- $\sum (x \cdot y)$
- $\sum (x^2)$

|        | $x$    | $y$    | $x \cdot y$ | $x^2$   |
| ------ | ------ | :----- | ----------- | ------- |
|        | 7      | 2      | 14          | 49      |
|        | 1      | 9      | 9           | 1       |
|        | 10     | 2      | 20          | 100     |
|        | 5      | 5      | 25          | 25      |
|        | 4      | 7      | 28          | 16      |
|        | 3      | 11     | 33          | 9       |
|        | 13     | 2      | 26          | 169     |
|        | 10     | 5      | 50          | 100     |
|        | 2      | 14     | 28          | 4       |
| $\sum$ | **55** | **57** | **233**     | **473** |

### Hallar $w_1$

Para hallar $w_1$ emplearemos la siguiente fórmula[^fn2]:
$$
w_1 = 
\frac
	{
	\sum (x \cdot y) - \frac
		{(\sum x) \cdot (\sum y)}
		{n}
	}
	{
	\sum x^2 - \frac{(\sum x)^2}{n}
	}
$$
Lo cual se resuelve como:
$$
w_1 = 
\frac
	{
	233 - \frac
		{55 \cdot 57}
		{9}
	}
	{
	473 - \frac{55^2}{9}
	}
	\approx -0.8425
$$

### Hallar $w_0$

Para hallar $w_0$ emplearemos la siguiente fórmula:
$$
w_0 = \bar y - w_1 \cdot \bar x
$$
Lo cual se resuelve como:
$$
w_0 = \frac{\sum y}{n} - w_1 \cdot \frac{\sum x}{n}
= \frac{57}{9} - (-0.84) \cdot \frac{55}{9}
\approx 11.4821
$$

### Resolución

Dada la fórmula inicial:
$$
y = w_{0} + w_{1}x
$$
Se resuelve como:
$$
y = 11.4821 - 0.8425x
$$

### Otros conceptos de interés

Para poder discernir si nuestro modelo está bien entrenado, necesitamos conocer otros conceptos, que nos darán pistas sobre cómo de ajustado está dicho modelo.

#### Residuos

La diferencia entre el valor observado y el valor predicho. 
$$
r_i = y_i - \hat{y_i}
$$


#### Función de pérdida

Una función que depende de los parámetros del modelo y de los datos de entrada, siendo 0 el resultado si el modelo es perfecto, y un valor mayor cuanto peor es el modelo. Esta función puede calcular el error del modelo, en este caso, mediante la suma de los cuadrados de los residuos.
$$
L = \sum_i r_i^2
$$


#### Suma de cuadrados

Expresado a menudo como $SS_{xx}$, para el caso de la suma de cuadrados de $x$.

### Estimadores

#### MSE (Mean Squared Error)

Media de los cuadrados de los residuos. El MSE penaliza mucho los errores (de forma cuadrática). Sufre mucho por culpa de los outliers. Puede ser adecuado en contextos donde no esperamos outliers.

#### RMSE (Root Mean Squared Error)

La raíz cuadrada del MSE. La gran ventaja de RMSE es que se expresa en las mismas unidades que la variable objetivo. Se puede hablar de errores en metros, segundos, etc. Lo que lo hace más intuitivo.

#### MAE (Mean Absolute Error)

Para solventar lo de la penalización cuadrática, en vez de los cuadrados de los residuos, usamos su valor absoluto. De un único paso tenemos el error en las mismas unidades y con una respuesta más proporcional. Éste se usa mucho en finanzas.

## Solución práctica (Python)

Una vez hemos entendido la parte teórica, procedemos a la implementación tanto del modelo de regresión lineal mediante mínimos cuadrados, como de la comprobación posterior mediante la función de pérdida.

```python
# Imports iniciales
from functools import partial
from math import sqrt
from typing import Callable, List, Tuple
```

```python
# Datos de entrada
# Lista de tuplas (x, y)
datos = [
  (7, 2), 
  (1, 9), 
  (10, 2), 
  (5, 5), 
  (4, 7), 
  (3, 11), 
  (13, 2), 
  (10, 5), 
  (2, 14)
]
```

```python
# Cálculo de coeficientes (w0, w1) mediante mínimos cuadrados
def calcular_coeficientes(
  datos: List[Tuple[float, float]]
) -> Tuple[float, float]:
  sum_x, sum_y, sum_xy, sum_sq_x = (
    sum(i) 
    for i in zip(*[(x, y, x*y, x*x) for x, y in datos])
  )
  n = len(datos)

  w1 = (sum_xy - (sum_x * sum_y) / n) / (sum_sq_x - (sum_x * sum_x) / n)
  
  w0 = (sum_y / n) - (w1 * (sum_x / n))
  
  return w0, w1
```

```python
# Entrenamiento del modelo
w0, w1 = calcular_coeficientes(datos=datos)

# w0 = 11.482142857142854
# w1 = -0.842532467532467
```

```python
# Fórmula inicial para hallar (y) dados (x, w0, w1)
def predecir_modelo(x: float, w0: float, w1: float) -> float:
  return w0 + (w1*x)
```

```python
# Currificación del modelo para invocarlo únicamente mediante (x)
modelo_entrenado: Callable = partial(predecir_modelo, w0=w0, w1=w1)
```

```python
# Función de cálculo de residuos para cada (y) del conjunto de datos inicial
def calcular_residuos(
  datos: List[Tuple[float, float]], 
  modelo: Callable
) -> List[float]:
  return [y - modelo(x) for x, y in datos]
```

```python
residuos = calcular_residuos(datos=datos, modelo=modelo_entrenado)
```


```python
# Función de pérdida mediante sumatorio de cuadrados de los residuos
def calcular_error_total(
  residuos: List[float]
) -> float:
  return sum([r*r for r in residuos])
```


```python
# Cálculo del error total
error_total = calcular_error_total(datos=datos, modelo=modelo_entrenado)

# error_total = 50.827922077922075
```

```python
# Función de pérdida mediante MSE: media de los cuadrados de los residuos
def calcular_mse(
  residuos: List[float]
) -> float:
  return (calcular_error_total(residuos=residuos) / len(residuos))
```

```python
# Cálculo del MSE
mse = calcular_mse(residuos=residuos)

# mse = 5.647546897546897
```

```python
# Función de pérdida mediante RMSE: raíz cuadrada de media de los cuadrados de los residuos
def calcular_rmse(
  residuos: List[float]
) -> float:
  return sqrt(calcular_mse(residuos=residuos))
```

```python
# Cálculo del RMSE
rmse = calcular_rmse(residuos=residuos)

# rmse = 2.376456794799118
```

```python
# Función de pérdida mediante MAE: media de los valores absolutos de los residuos
def calcular_mae(
  residuos: List[float]
) -> float:
  return sum([abs(r) for r in residuos]) / len(residuos)
```

```python
# Cálculo del MAE
mae = calcular_mae(residuos=residuos)

# mae = 2.1471861471861464
```

## Solución práctica (numpy)
```python
import numpy as np
```

```python
base_data = np.array([
    [7, 2],
    [1, 9],
    [10, 2],
    [5, 5],
    [4, 7],
    [3, 11],
    [13, 2],
    [10, 5],
    [2, 14],
])

```

```python
X = base_data[:, [0]]
Y = base_data[:, [1]]

X_Y = np.multiply(X, Y)
X_sq = np.multiply(X, X)

```

```python
X_sum = np.sum(X)
Y_sum = np.sum(Y)
X_Y_sum = np.sum(X_Y)
X_sq_sum = np.sum(X_sq)
n = Y.size * 1.0 # make it float

```

```python
w1 = (X_Y_sum - ((X_sum * Y_sum) / n)) / (X_sq_sum - (X_sum * X_sum) / n)
# w1 = -0.8425324675324672

```

```python
w0 = (Y_sum / n) - (w1 * (X_sum / n))
# w0 = 11.482142857142854

```

```python
predict = lambda x: w0 + (w1 * x)
y = predict(X)
"""
y = array([
  [ 5.58441558],
  [10.63961039],
  [ 3.05681818],
  [ 7.26948052],
  [ 8.11201299],
  [ 8.95454545],
  [ 0.52922078],
  [ 3.05681818],
  [ 9.79707792]
])
"""

```

```python
residuos = Y - y
"""
residuos = array([[-3.58441558],
  [-1.63961039],
  [-1.05681818],
  [-2.26948052],
  [-1.11201299],
  [ 2.04545455],
  [ 1.47077922],
  [ 1.94318182],
  [ 4.20292208]
])
"""

```

```python
total_error = (residuos**2).sum()
 # total_error = 50.827922077922075

```

```python
mse = total_error / n
# mse = 5.647546897546897

```

```python
rmse = np.sqrt(mse)
# rmse = 2.376456794799118

```

```python
mae = np.abs(error).sum() / n
# mae = 2.1471861471861464

```

# Solución mediante matrices

 Para calcular la regresión mediante método matricial, podemos aplicar la siguiente fórmula:
$$
Y = X\beta + \epsilon
$$
Donde:

$Y$ es el vector $(n, 1)$ de variables dependientes (predicción).

$X$ es la matriz $(n, k+1)$ de variables independientes (explicativas) observadas, compuesta por una columa de $1$  y tantas columnas como dimensiones tengamos (en este caso únicamente $x_1$).

$\beta$ es el vector $(k+1, 1)$  de coeficientes de regresión, en este caso compuesto por $w_0, w_1$.

$\epsilon$ es el vector $(n, 1)$  de componentes de error aleatorio (resíduo).

> Este modelo contempla la existencia de resíduos. Resíduo es la diferencia entre la observación y la predicción[^fn3]:
> $$
> \epsilon_i = y_i - \hat{y_i}
> $$
> 

Retomando el conjunto observado en el ejercicio mediante mínimos cuadrados:

| $x$  | $y$  |
| ---- | ---- |
| 7    | 2    |
| 1    | 9    |
| 10   | 2    |
| 5    | 5    |
| 4    | 7    |
| 3    | 11   |
| 13   | 2    |
| 10   | 5    |
| 2    | 14   |

Obtenemos las siguientes matrices[^fn4]:
$$
Y = \begin{pmatrix}
Y_1\\
Y_2\\
\vdots\\
Y_n\\
\end{pmatrix}
,\quad
X = \begin{pmatrix}
1 & X_{11} & \dots & X_{k1}\\
1 & X_{12} & \dots & X_{k2}\\
\vdots & \vdots & \ddots & \vdots\\
1 & X_{1n} & \dots & X_{kn}\\
\end{pmatrix}
,\quad
\beta = \begin{pmatrix}
\beta_0\\
\beta_1\\
\vdots\\
\beta_k\\
\end{pmatrix}
,\quad
\epsilon = \begin{pmatrix}
\epsilon_1\\
\epsilon_2\\
\vdots\\
\epsilon_n\\
\end{pmatrix}
$$

Los subíndices $_k$ y $_n$ Representan el número de dimensiones (en este caso $k=1$, ya que solo tenemos $x_1$) y el número de observaciones (en este caso $n=9$) de las dimensiones, respectívamente.

Inicialmente conocemos únicamente las siguiente matrices:
$$
Y = \begin{pmatrix}
2\\
9\\
2\\
5\\
7\\
11\\
2\\
5\\
14\\
\end{pmatrix}
,\quad
X = \begin{pmatrix}
1 & 7\\
1 & 1\\
1 & 10\\
1 & 5\\
1 & 4\\
1 & 3\\
1 & 13\\
1 & 10\\
1 & 2\\
\end{pmatrix}
$$

El estimador de mínimos cuadrados mediante el método matricial se representa de la siguiente manera[^fn5][^fn6]:
$$
\hat\beta = (X'X)^{-1}X'Y
$$

$$
\hat\epsilon = Y-X\beta
$$

## Hallar $\beta$

Dado:
$$
\hat\beta = (X'X)^{-1}X'Y
$$
Hallamos $X'$ (matriz traspuesta de $X$)
$$
X' = \begin{pmatrix}
1 & 1 & 1 & 1 & 1 & 1 & 1 & 1 & 1\\
7 & 1 & 10 & 5 & 4 & 3 & 13 & 10 & 2\\
\end{pmatrix}
$$

Hallamos $X'X$
$$
X'X = \begin{pmatrix}
1 & 1 & 1 & 1 & 1 & 1 & 1 & 1 & 1\\
7 & 1 & 10 & 5 & 4 & 3 & 13 & 10 & 2\\
\end{pmatrix}
\cdot
\begin{pmatrix}
1 & 7\\
1 & 1\\
1 & 10\\
1 & 5\\
1 & 4\\
1 & 3\\
1 & 13\\
1 & 10\\
1 & 2\\
\end{pmatrix}
= \begin{pmatrix}
c_{11} & c_{12}\\
c_{21} & c_{22}\\
\end{pmatrix}
$$

#### Multiplicación de matrices

Para hallar el valor de cada celda de la matriz se calcula la suma de los productos de cada elemento de la fila de la primera matriz por la cada elemento de la columna de la segunda matriz.

Es decir, dado:
$$
A = \begin{pmatrix}
a_{11} & a_{12} & a_{13}\\
a_{21} & a_{22} & a_{23}\\
\end{pmatrix}
$$

$$
B = \begin{pmatrix}
b_{11} & b_{12}\\
b_{21} & b_{22}\\
b_{31} & b_{32}\\
\end{pmatrix}
$$

$$
AB = \begin{pmatrix}
a_{11} \cdot b_{11}+a_{12} \cdot b_{21}+a_{13} \cdot b_{31} & 
a_{11} \cdot b_{12}+a_{12} \cdot b_{22}+a_{13} \cdot b_{32}\\
a_{21} \cdot b_{11}+a_{22} \cdot b_{21}+a_{23} \cdot b_{31} & 
a_{21} \cdot b_{12}+a_{22} \cdot b_{22}+a_{23} \cdot b_{32}\\
\end{pmatrix}
$$



Por lo tanto:

$c_{11} = 1  \cdot 1+1  \cdot 1+1  \cdot 1+1  \cdot 1+1  \cdot 1+1  \cdot 1+1  \cdot 1+1  \cdot 1+1  \cdot 1$

$c_{11} = 1+1+1+1+1+1+1+1+1 = 9$

$c_{12} = 1  \cdot 7+1  \cdot 1+1  \cdot 10+1  \cdot 5+1  \cdot 4+1  \cdot 3+1  \cdot 13+1  \cdot 10+1  \cdot 2$

$c_{12} = 7+1+10+5+4+3+13+10+2 = 55$

$c_{21} = 7  \cdot 1+1  \cdot 1+10  \cdot 1+5  \cdot 1+4  \cdot 1+3  \cdot 1+13  \cdot 1+10  \cdot 1+2  \cdot 1$

$c_{21} = 7+1+10+5+4+3+13+10+2 = 55$

$c_{22} = 7  \cdot 7+1  \cdot 1+10  \cdot 10+5  \cdot 5+4  \cdot 4+3  \cdot 3+13  \cdot 13+10  \cdot 10+2  \cdot 2$

$c_{22} = 49+1+100+25+16+9+169+100+4 = 473$

$$
X'X = \begin{pmatrix}
c_{11} & c_{12}\\
c_{21} & c_{22}\\
\end{pmatrix}
= \begin{pmatrix}
9 & 55\\
55 & 473\\
\end{pmatrix}
$$
Acto seguido debemos hallar $(X'X)^{-1}$,  es decir, inversa del resultado anterior. La fórmula de la inversa de una matriz es la siguiente[^fn7]:
$$
A^{-1} = \frac{1}{|A|} \cdot Adj(A')
$$
Donde $|A|$ es el determinante de $A$, y $Adj(A')$ es el adjunto de la traspuesta de $A$.

**Nota**: Primero debemos hallar $|A|$ ya que si fuera $0$ la matriz no se podría invertir ya que estaríamos dividiendo $\frac{1}{0}$.

### Determinante de una matriz mediante Sarrus

Cómo hallar el determinante de una matriz mediante Sarrus.
$$
A = \begin{pmatrix}
a_{11} & a_{12} & a_{13}\\
a_{21} & a_{22} & a_{23}\\
a_{31} & a_{32} & a_{33}\\
\end{pmatrix}
$$
$$
|A| = (a_{11}  \cdot a_{22}  \cdot a_{33}) + (a_{12}  \cdot a_{23}  \cdot a_{31}) + (a_{21}  \cdot a_{32}  \cdot a_{13}) - 
((a_{13}  \cdot a_{22}  \cdot a_{31}) + (a_{23}  \cdot a_{32}  \cdot a_{11}) + (a_{12}  \cdot a_{21}  \cdot a_{33}))
$$

Para matrices de $2x2$ es más sencillo todavía:
$$
A = \begin{pmatrix}
a_{11} & a_{12}\\
a_{21} & a_{22}\\
\end{pmatrix}
$$
$$
|A| = (a_{11}  \cdot a_{22}) - (a_{12}  \cdot a_{21})
$$

Por lo tanto, dado $A = X'X$ (resultado del paso anterior):
$$
A = \begin{pmatrix}
9 & 55\\
55 & 473\\
\end{pmatrix}
$$
$$
|A| = (9  \cdot 473) - (55  \cdot 55) = 4257 - 3025 = 1232
$$

El siguiente paso será calcular $A'$, que en este caso coincide con la propia matriz:
$$
A = \begin{pmatrix}
9 & 55\\
55 & 473\\
\end{pmatrix}
$$
$$
A' = \begin{pmatrix}
9 & 55\\
55 & 473\\
\end{pmatrix}
$$

Acto seguido, debemos hallar su adjunto $Adj(A')$. 

### Adjunto de una matriz

Cómo hallar $Adj(A)$[^fn8], para ello se crea una matriz de las mismas dimensiones, donde cada celda será el determinante resultante de eliminar la fila y columna de dicha celda. Para el caso de una matriz $3x3$ sería hallar determinantes de matrices $2x2$. 

Hay algunas celdas que cambian de signo. En el caso de una matriz $3x3$ serían las celdas que no participan en las diagonales. Por lo tanto:
$$
A = \begin{pmatrix}
a_{11} & a_{12} & a_{13}\\
a_{21} & a_{22} & a_{23}\\
a_{31} & a_{32} & a_{33}\\
\end{pmatrix}
$$
$$
Adj(A) = \begin{pmatrix}
|a_{11}| & -|a_{12}| & |a_{13}|\\
-|a_{21}| & |a_{22}| & -|a_{23}|\\
|a_{31}| & -|a_{32}| & |a_{33}|\\
\end{pmatrix}
$$
$$
|a_{11}| = (a_{22} \cdot a_{33})-(a_{23} \cdot a_{32})
$$
$$
|a_{12}| = (a_{21} \cdot a_{33})-(a_{23} \cdot a_{31})
$$
$$
|a_{13}| = (a_{21} \cdot a_{32})-(a_{22} \cdot a_{31})
$$
$$
|a_{21}| = (a_{12} \cdot a_{33})-(a_{13} \cdot a_{32})
$$
$$
|a_{22}| = (a_{11} \cdot a_{33})-(a_{13} \cdot a_{31})
$$
$$
|a_{23}| = (a_{11} \cdot a_{32})-(a_{12} \cdot a_{31})
$$
$$
|a_{31}| = (a_{12} \cdot a_{23})-(a_{13} \cdot a_{22})
$$
$$
|a_{32}| = (a_{11} \cdot a_{23})-(a_{13} \cdot a_{21})
$$
$$
|a_{33}| = (a_{11} \cdot a_{22})-(a_{12} \cdot a_{21})
$$

Para matrices de $2x2$ es más sencillo todavía, ya que el determinante de una matriz de $1x1$ es el propio número, pero cambiando el signo en la diagonal secundaria[^fn9]:
$$
A = \begin{pmatrix}
a_{11} & a_{12}\\
a_{21} & a_{22}\\
\end{pmatrix}
$$
$$
Adj(A) = \begin{pmatrix}
|a_{11}| & -|a_{12}|\\
-|a_{21}| & |a_{22}|\\
\end{pmatrix} = \begin{pmatrix}
a_{22} & -a_{21}\\
-a_{12} & a_{11}\\
\end{pmatrix}
$$
Por lo tanto:
$$
A' = \begin{pmatrix}
9 & 55\\
55 & 473\\
\end{pmatrix}
$$
$$
Adj(A') = \begin{pmatrix}
473 & -55\\
-55 & 9\\
\end{pmatrix}
$$
Actualmente tenemos resuelto hasta este punto:
$$
A^{-1} = \frac{1}{|A|} \cdot Adj(A')
$$
$$
A^{-1} = \frac{1}{1232} \cdot \begin{pmatrix}[1.5]
473 & -55\\
-55 & 9\\
\end{pmatrix}
= \begin{pmatrix}[1.5]
\frac{473}{1232} & -\frac{55}{1232}\\
-\frac{55}{1232} & \frac{9}{1232}\\
\end{pmatrix}
$$

### Verificación de inversa de la matriz

Para verificar que hemos hallado correctamente la inversa de la matriz se debe cumplir:
$$
A \cdot A^{-1} = I = \begin{pmatrix}
1 & 0 \\
0 & 1 \\
\end{pmatrix}
$$
Por lo tanto:
$$
A \cdot A^{-1} = \begin{pmatrix}[1.5]
9 & 55\\
55 & 473\\
\end{pmatrix} \cdot \begin{pmatrix}[1.5]
\frac{473}{1232} & -\frac{55}{1232}\\
-\frac{55}{1232} & \frac{9}{1232}\\
\end{pmatrix}
$$
$$
A \cdot A^{-1} = \begin{pmatrix}[1.5]
\frac{4257}{1232} -\frac{3025}{1232} & \frac{495}{1232} - \frac{495}{1232}\\
\frac{26015}{1232} - \frac{26015}{1232} & -\frac{3025}{1232} + \frac{4257}{1232}\\
\end{pmatrix} = \begin{pmatrix}[1.5]
1 & 0\\
0 & 1\\
\end{pmatrix}
$$

Una vez verificada $A^{-1}$, proseguimos:

Dado que $A^{-1} = (X'X)^{-1}$, nos quedaría multiplicar $A^{-1}X'Y$:
$$
A^{-1}X' = \begin{pmatrix}[1.5]
\frac{473}{1232} & -\frac{55}{1232}\\
-\frac{55}{1232} & \frac{9}{1232}\\
\end{pmatrix} \cdot \begin{pmatrix}[1.5]
1 & 1 & 1 & 1 & 1 & 1 & 1 & 1 & 1\\
7 & 1 & 10 & 5 & 4 & 3 & 13 & 10 & 2\\
\end{pmatrix}
$$
$$
A^{-1}X' = \begin{pmatrix}[1.5]
\frac{88}{1232}  & \frac{418}{1232} & -\frac{77}{1232} & \frac{198}{1232} & \frac{253}{1232} & \frac{308}{1232} & -\frac{242}{1232} & -\frac{77}{1232} & \frac{363}{1232}\\
\frac{8}{1232} & -\frac{46}{1232} & \frac{35}{1232} & -\frac{10}{1232} & -\frac{19}{1232} & -\frac{28}{1232} & \frac{62}{1232} & \frac{35}{1232} & -\frac{37}{1232}\\
\end{pmatrix}
$$

Finalmente, nos faltaría hallar $A^{-1}X'Y$. En este caso lo resolvemos directamente mediante una calculadora[^fn10]:
$$
A^{-1}X' = \begin{pmatrix}[1.5]
\frac{88}{1232}  & \frac{418}{1232} & -\frac{77}{1232} & \frac{198}{1232} & \frac{253}{1232} & \frac{308}{1232} & -\frac{242}{1232} & -\frac{77}{1232} & \frac{363}{1232}\\
\frac{8}{1232} & -\frac{46}{1232} & \frac{35}{1232} & -\frac{10}{1232} & -\frac{19}{1232} & -\frac{28}{1232} & \frac{62}{1232} & \frac{35}{1232} & -\frac{37}{1232}\\
\end{pmatrix}
$$

$$
Y = \begin{pmatrix}
2\\
9\\
2\\
5\\
7\\
11\\
2\\
5\\
14\\
\end{pmatrix}
$$

$$
\beta = A^{-1}X'Y = \begin{pmatrix}[1.5]
\frac{14146}{1232} \\
-\frac{1038}{1232} \\
\end{pmatrix}
$$

$\beta$  es el vector de coeficientes de regresión. Con lo que podríamos concluir que:
$$
w_0 = \frac{14146}{1232} \approx 11.4821
$$
$$
w_1 = -\frac{1038}{1232} \approx -0.8425
$$
Contrastándolo con el resultado obtenido sin aplicar el metodo matricial, podemos observar que tanto $w_0$ como $w_1$ coinciden con su resultado.

## Hallar $\epsilon$

Dado:
$$
\hat\epsilon = Y-X\beta
$$
Hallamos $\epsilon$, que es el vector de componentes de residuos. Para ello habrá que realizar la resta de $Y$ menos la multiplicación de $X\beta$. Para restar matrices únicamente hay que restar los términos que ocupan la misma posición:
$$
\epsilon = \begin{pmatrix}
2\\
9\\
2\\
5\\
7\\
11\\
2\\
5\\
14\\
\end{pmatrix}
-
\begin{pmatrix}
1 & 7\\
1 & 1\\
1 & 10\\
1 & 5\\
1 & 4\\
1 & 3\\
1 & 13\\
1 & 10\\
1 & 2\\
\end{pmatrix} \cdot 
\begin{pmatrix}[1.5]
\frac{13794}{1232} \\
-\frac{1038}{1232} \\
\end{pmatrix}
$$
$$
\epsilon = \begin{pmatrix}[1.5]
2\\
9\\
2\\
5\\
7\\
11\\
2\\
5\\
14\\
\end{pmatrix}
-
\begin{pmatrix}[1.5]
\frac{6528}{1232}\\
\frac{12756}{1232}\\
\frac{3414}{1232}\\
\frac{8604}{1232}\\
\frac{7566}{1232}\\
\frac{6528}{1232}\\
\frac{300}{1232}\\
\frac{3414}{1232}\\
\frac{5490}{1232}\\
\end{pmatrix}
$$
$$
\epsilon = \begin{pmatrix}[1.5]
-\frac{4064}{1232}\\
\frac{1668}{1232}\\
-\frac{950}{1232}\\
-\frac{2444}{1232}\\
\frac{1058}{1232}\\
\frac{7024}{1232}\\
\frac{300}{1232}\\
\frac{2164}{1232}\\
\frac{11758}{1232}\\
\end{pmatrix}
$$

## Solución práctica (numpy + matrices)

```python
import numpy as np

```

```python
base_data = np.array([
    [7, 2],
    [1, 9],
    [10, 2],
    [5, 5],
    [4, 7],
    [3, 11],
    [13, 2],
    [10, 5],
    [2, 14],
])

```

```python
X_base = base_data[:, :-1]  # All except last, as matrix
Y = base_data[:, -1]  # Last, as vector
n = Y.size

```

```python
X_reshaped_tuple = (np.ones(n), X_base.transpose())

X_transpose = np.vstack(X_reshaped_tuple)
X = X_transpose.transpose()

"""
X = array([
  [ 1.,  7.],
  [ 1.,  1.],
  [ 1., 10.],
  [ 1.,  5.],
  [ 1.,  4.],
  [ 1.,  3.],
  [ 1., 13.],
  [ 1., 10.],
  [ 1.,  2.]
])
"""

"""
Y = array([ 2,  9,  2,  5,  7, 11,  2,  5, 14])
"""

```

```python
X_t_X = np.dot(X_transpose, X)

"""
X_t_X = array([
  [  9.,  55.],
  [ 55., 473.]
])
"""

```

```python
# A^-1 = (X'X)^-1

A_inv = np.linalg.inv(X_t_X)

"""
A_inv = array([
  [ 0.38392857, -0.04464286],
  [-0.04464286,  0.00730519]
])
"""

```

```python
A_inv_X_t = np.dot(A_inv, X_transpose)
beta = np.dot(A_inv_X_t, Y)
# beta = array([11.48214286, -0.84253247])
```

```python
residuos = Y - np.dot(X, beta)

"""
residuos = array([
  -3.58441558, 
  -1.63961039, 
  -1.05681818, 
  -2.26948052, 
  -1.11201299,
  2.04545455,  
  1.47077922,  
  1.94318182,  
  4.20292208
])
"""
```

[^fn1]: [YouTube (DotCSV) - Regresión Lineal y Mínimos Cuadrados Ordinarios](https://www.youtube.com/watch?v=k964_uNn3l0)
[^fn2]: [YouTube (Educatina) - Método de Mínimos cuadrados](https://www.youtube.com/watch?v=gUdU6BgnJ2c)
[^fn3]: [PDF (Universidad Carlos III) - Ingeniería Industrial - Estadística - Regresión lineal simple](http://www.est.uc3m.es/esp/nueva_docencia/leganes/ing_industrial/estadistica_II/doc%20grupo2006/archivos/apuntes_Est2.pdf)
[^fn4]: [PDF (Universidad de Cantabria) - ECONOMETRÍA 1 - Tema 3: El modelo de regresión lineal múltiple](https://ocw.unican.es/pluginfile.php/1127/course/section/1352/Ppt_Ch3_G942_14-15.pdf)
[^fn5]: [YouTube (Juan José Gibaja Martíns) - ML-17 Modelo teórico de regresión lineal múltiple. Expresión matricial.](https://www.youtube.com/watch?v=5-kQWu7Uag8)
[^fn6]: [YouTube (Juan José Gibaja Martíns) -YouTube (Juan José Gibaja Martíns) - ML-18 Estimación por mínimos cuadrados en regresión lineal múltiple](https://www.youtube.com/watch?v=JxEBvT2vmIk)
[^fn7]: [YouTube (unicoos) - Matriz inversa, traspuesta y adjunta BACHILLERATO matemáticas](https://www.youtube.com/watch?v=3BpGef99HEs)
[^fn8]: [YouTube (WissenSync) - Adjunta de una matriz 2x2 | Álgebra lineal | Problema 1](https://www.youtube.com/watch?v=VwHFaQ4yYMA)
[^fn9]: [YouTube (Matemáticas profe Alex) - Determinante de una matriz de 2x2](https://www.youtube.com/watch?v=bsUUVmeqsdY)
[^fn10]: [matrixcalc.org - Hallar $\beta$](https://matrixcalc.org/es/#%7B%7B88,418,-77,198,253,308,-242,-77,363%7D,%7B8,-46,35,-10,-19,-28,62,35,-37%7D%7D*%7B%7B2%7D,%7B9%7D,%7B2%7D,%7B5%7D,%7B7%7D,%7B11%7D,%7B2%7D,%7B5%7D,%7B14%7D%7D)
