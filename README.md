# Тестовое задание
Реализовать каталог отелей с возможностью поиска отеля по части названия.
## Разделы сайта
### 1. Основной раздел: поиск
   На странице должна отображаться форма с полем для ввода, выбором страны и кнопкой
   "Найти". При нажатии на кнопку "Найти" должен производиться поиск среди
   зарегистрированных в системе отелей по названию, принадлежащих заданной стране. Поиск
   должен
   производиться по вхождению введенной строки в название отеля, причем
   строка может быть и где-то в середине названия.
   Результаты поиска выводить в виде таблицы с колонками "Звездность",
   "Название". Результаты должны быть отсортированы в порядке
   убывания звездности, для одинаковых звезд упорядочивание производить по
   названию отеля по возрастанию. Также выводить количество найденных
   отелей.
   Для отеля при наличии ссылки на сайт в колонке с наименованием
   отдельной строкой выводить ссылку на сайт с текстом "Перейти на сайт",
   при нажатии на которую должен открываться сайт в отдельной вкладке
   Если ничего не нашлось, то выводить надпись "По Вашему запросу
   ничего не найдено".
   На странице результатов должна быть кнопка "Новый поиск", ведущая на
   страницу поиска
### 2. Справочник стран
   На странице должен отображаться список стран, заведенных в систему. Тут
   же должна быть возможность добавить, отредактировать или удалить страну
   (можно использовать scaffolding-генерацию файлов)
### 3. Справочник отелей
   На странице должен отображаться список отелей, заведенных в систему. Тут
   же должна быть возможность добавить, отредактировать или удалить отель
   (можно использовать scaffolding-генерацию файлов)

## Структуры данных:
### Страна:
- название (обязательное поле, уникальное, не больше 255 символов)
- столица (обязательное поле, не больше 128 символов)
###  Отель:
- название (обязательное поле, уникальное в пределах страны, не больше
  255 символов)
- страна (обязательное поле, ссылка на справочник стран)
- звездность (обязательное поле, значения от 1 до 5)
- сайт (необязательное поле. Если заполнено, то должно начинаться на
  http:// или https://)

## Прочее:
Сделать заполнение таблиц с отелями и странами какими-то значениями при
старте приложения (с помощью файла bootstrap.groovy), для того, чтобы ), для того, чтобы
после запуска в системе были какие-то данные
Использовать версию grails4.
Присылать только исходные файлы, скомпилированные файлы и библиотеки присылать не
нужно (можно приложить ссылку на github с исходным кодом)
Базу использовать встроенную

### Документация
Документация grails есть на сайте grails.org
https://guides.grails.org/creating-y), для того, чтобы our-first-grails-app/guide/index.html
http://docs.grails.org/4.0.9/guide/single.html