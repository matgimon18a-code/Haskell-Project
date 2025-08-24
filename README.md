# Reporte práctica #1

## Lenguajes de programación

**Autores:**  
- Juliana Sepulveda  
- Matias Gil  

**Universidad EAFIT - 2025**

---

## Uso de las Funciones

### a) `filtrarLista`

- **Propósito:**  
  Toma una lista de números, un valor mínimo y un valor máximo, y devuelve una nueva lista que contiene solo los elementos dentro del rango especificado `[mínimo, máximo]`.

- **Entradas:**  
  Una lista de números (ej: `[1, 25, 5, -4]`), el límite inferior (`mínimo`) y el límite superior (`máximo`).

- **Salida:**  
  Una nueva lista con los elementos filtrados (ej: `[1, 5]`).

#### Pruebas

1. `filtrarLista [1, 25, 5, -4] 0 5` → `[1, 5]`  
2. `filtrarLista [10, 3, 7, 15, 2] 3 10` → `[10, 3, 7]`  
3. `filtrarLista [-5, -2, 0, 3, 8] (-3) 2` → `[-2, 0]`  
4. `filtrarLista [] 0 5` → `[]`  

---

### b) `ordenarLista`

- **Propósito:**  
  Ordena una lista de números **Float** en orden descendente.

- **Entradas:**  
  Una lista de números flotantes (ej: `[1.0, 25.0, 5.0, -4.0]`).

- **Salida:**  
  La lista ordenada de mayor a menor (ej: `[25.0, 5.0, 1.0, -4.0]`).

#### Pruebas

1. `ordenarLista [1, 25, 5, -4]` → `[25.0, 5.0, 1.0, -4.0]`  
2. `ordenarLista [10.5, 3.2, 7.8, 15.1, 2.9]` → `[15.1, 10.5, 7.8, 3.2, 2.9]`  
3. `ordenarLista [5.0]` → `[5.0]`  
4. `ordenarLista []` → `[]`  

---

## Problemas y Soluciones

- **Problema en `filtrarLista`:** dificultad en construir la lógica recursiva.  
  **Solución:** uso de *pattern matching* con casos base (`[]`) y recursivos `(x:xs)`.

- **Problema en `ordenarLista`:** errores en comparación al ordenar.  
  **Solución:** se implementó un algoritmo tipo *insertion sort* recursivo.

---

## Segundo punto: Mini Calculadora

Se implementó una **mini calculadora** capaz de:  
- Aproximar funciones **coseno, logarítmica y exponencial**.  
- Calcular el **valor real**.  
- Calcular el **error porcentual**.  

### Uso:
1. Copiar el código en un compilador online (ej: Onecompiler).  
2. Colocar la función a usar junto con los parámetros:  

   ```
   (FUNCIÓN | N° PARA APROXIMAR | N° DE SERIE)
   ```

### Ejemplos:

- `coseno 1.5 6` → `0.07073693411690848 , 0.0707372016677029 , 0.000378%`  
- `exponencial 2 5` → `7.0 , 7.38905609893065 , 5.2653%`  

### Problemas y soluciones:

- **Problema:** falta de conocimiento previo en series de Taylor.  
  **Solución:** investigación con videos y material online.  

- **Problema:** redundancia al implementar 3 funciones distintas.  
  **Solución:** creación de una mini calculadora genérica para reutilizar la lógica.  

---

## Tercer punto: DCT

La **DCT** (Transformada Discreta del Coseno) transforma una señal discreta en una representación basada en cosenos.  
Es usada en **procesamiento de imágenes** y **compresión de señales**.

### Uso:
- El código incluye un ejemplo con una lista `[1..10]`.  
- Para cambiarlo, se modifican los valores en la lista (usando corchetes).  

### Ejemplos:

- Entrada: `[1,2,3,4,5,6,7,8,9,10]`  
  → Salida: `17.3925, -9.0249, 0, -0.9667, 0, -0.3162, 0, -0.1279, 0, -0.0359`  

- Entrada: `[2,4,6,8]`  
  → Salida: `10.0, -5.6568, 0.0, -0.7654`  

### Problemas y soluciones:

- **Problema:** dificultad en comprender la DCT.  
  **Solución:** revisión de videos y material online.  

- **Problema:** lógica del código poco clara en la implementación inicial.  
  **Solución:** apoyo en guías y tutoriales de YouTube para estructurar la solución.  

---

## Conclusiones

- Se comprendió y aplicó la recursividad en la creación de funciones.  
- Se aprendió la lógica detrás de la **serie de Taylor** y su aplicación práctica.  
- Se implementó la **DCT**, entendiendo su importancia en la compresión de datos.  
- La práctica permitió reforzar el aprendizaje mediante investigación y prueba-error.
