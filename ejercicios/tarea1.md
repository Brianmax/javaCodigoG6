# Ejercicio 1

Como objetivo de este año, te propones leer la mayor cantidad de libros posible. Hoy tienes `t` minutos para leer. Es por eso que tomas `n` libros de la biblioteca y para cada libro estimas el tiempo que te tomará leerlo. Sea el número de libros desde 1 hasta `n`. Necesitarás $a_{i}$ minutos para leer el i-ésimo libro.

Decides escoger un libro arbitrario con el número `i` y leer los libros posteriores uno a uno, empezando desde este libro `i` que acabas de escoger, y posteriormente `i + 1`, `i + 2` y así sucesivamente. Continúas este proceso hasta que el tiempo ya no te alcance. Eliges leer un libro hasta terminarlo, es decir, no lees un libro si no tienes el tiempo suficiente para terminarlo. ¿Cuál es la cantidad máxima de libros que puedes leer?

**Input:**
```bash
4 5
3 1 2 1
```
La primera línea contiene dos enteros que son la cantidad de libros y el tiempo libre (`n` y `t`).

La segunda línea contiene la cantidad de tiempo que te tomará leer cada libro.

**Output:**
```bash
3
```

**Input:**
```bash
3 3
2 2 3
```
**Output:**
```bash
1
```

**Input:**
```bash
1 3
5
```
**Output:**
```bash
0
```
**Input:**
```bash
1 10
4
```

**Output:**
```bash
1
```

**Input:**
```bash
2 10
6 4
```

**Output:**
```bash
2
```

**Input:**
```bash
6 10
2 3 4 2 1 1
```

**Output:**
```bash
4
```

**Input:**
```bash
7 13
6 8 14 9 4 11 10
```

**Output:**
```bash
2
```

**Input:**
```bash
10 15
10 9 1 1 5 10 5 3 7 2
```

**Output:**
```bash
3
```

**Input:**
```bash
20 30
8 1 2 6 9 4 1 9 9 10 4 7 8 9 5 7 1 8 7 4
```

**Output:**
```bash
6
```

**Input:**
```bash
30 60
16 13 22 38 13 35 17 17 20 38 12 19 9 22 20 3 35 34 34 21 35 40 22 3 27 19 12 4 8 19
```

**Output:**
```bash
4
```

**Input:**
```bash
50 2
124 214 63 73 996 760 38 571 451 300 970 1 706 937 837 494 619 88 851 411 957 990 842 613 821 649 627 34 693 678 734 116 816 985 705 940 499 493 922 967 854 439 112 644 961 438 189 572 655 550
```

**Output:**
```bash
1
```
