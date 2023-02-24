---
## Front matter
title: "Отчёт по лабораторной работе №3"
subtitle: "Модель боевых действий"
author: "Егорова Диана Витальевна"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Целью данной работы является построение модели боевых действий на языках Julia и OpenModelica. Решение ОДУ 1 порядка с помощью графика. Рассмотреть модель боевных действий между регулярными войсками. Рассмотреть модель ведения боевых действий с участием регулярных войск и партизанских отрядов

# Задание

Существуют три модели боя.

1. Модель боевых действий между регулярными войсками

2. Модель ведение боевых действий с участием регулярных войск и
партизанских отрядов

3. Модель боевых действий между партизанскими отрядами

В нашей работе мы рассмотрим только первых две модели.

Проверим, как работает модель в различных ситуациях, постройте графики y(t) и x(t) в рассматриваемых случаях.

# Теоретическое введение

1. Модель боевых действий между регулярными войсками описывается следующим ОДУ

>dx/dt = - ax(t) - bx(t) + P(t)  
>dy/dt = - cx(t) - hy(t) + Q(t)  

2. Модель ведение боевых действий с участием регулярных войск и
партизанских отрядов

>dx/dt = - a(t)x(t) - b(t)x(t) + P(t)  
>dy/dt = - c(t)x(t)y(t) - h(t)y(t) + Q(t)  

где: 
>a,b,c,h - постоянные коэффициенты  
>a(t), h(t) - коэффициенты, описывающие потери, не связанные с боевыми действиями  
>c(t), b(t) - коэффициенты, описывающие потери, связанные с боевыми действиями  
>P(t), Q(t) - функции, учитывающие возможность подхода подкрепления к войскам  

# Выполнение лабораторной работы

После того, как разобрались с теорией пишем код на Julia. Решаем наши ОДУ, строим график (рис. @fig:001).

![Код на Julia](image/1.png){#fig:001 width=70%}

На первом графике мы видим - численность армии X проигрывает (рис. @fig:002).

![Модель боевых действий между регулярными войсками на Julia](image/2.png){#fig:002 width=70%}

На втором графике проигрывает армия Y (рис. @fig:003).

![Модель ведение боевых действий с участием регулярных войск и
партизанских отрядов на Julia](image/3.png){#fig:003 width=70%}

Дальше переходим к написанию кода на OpenModelica. Первая модель (рис. @fig:004).

![Модель боевых действий между регулярными войсками на OpenModelica](image/4.png){#fig:004 width=70%}

Наша вторая модель (рис. @fig:005).
![Модель ведение боевых действий с участием регулярных войск и партизанских отрядов на OpenModelica](image/5.png){#fig:005 width=70%}

Делаем установку наших симуляций (рис. @fig:006) (рис. @fig:007).

![Установка симуции модели боевых действий между регулярными войсками на OpenModelica](image/6.png){#fig:006 width=70%}

![Установка симуции модели ведения боевых действий с участием регулярных войск и
партизанских отрядов на OpenModelica](image/7.png){#fig:007 width=70%}

Получаем наши графики моделей боя (рис. @fig:008) (рис. @fig:009).

Графики похожи на графики в Julia, значит мы сделали все верно. Исходы боя получили аналогичным на Julia.

![Модель боевых действий между регулярными войсками на OpenModelica](image/8.png){#fig:008 width=70%}

На втором графике проигрывает армия Y (рис. @fig:009).

![Модель ведение боевых действий с участием регулярных войск и
партизанских отрядов на OpenModelica](image/9.png){#fig:009 width=70%}

# Выводы

В ходе лабораторной работы были получены навыки работы с простейшими моделями боевых действий. Укрепили наши навыки работы на Julia и OpenModelica. Результат работы - графики, наглядко показывающие результат. если сравнивать эти языки программирования, то для решения этой задачи мне понравился OpenModelica. Просто, наглядно, быстро и много интересных настроек, которые легко менять для изучения ситуации.


# Список литературы{.unnumbered}

Файлы на ТУИС, документация к лабораторной работе № 3 по предмету "Математическое моделирование"
::: {#refs}
:::
