<h1 align="center">About</h1>

# Run project
```sh
flutter run lib/main.dart
```

<br />

# Run sorting imports
```sh
flutter pub run import_sorter:main
```

<br />

# Модуль 7. Navigation

#### Задание
1. Создайте приложение и выберите подход для построения навигации. Вы можете использовать как стандартные возможности flutter (onGenerateRoute), так и библиотеку для построения роутинга Fluro или любую другую библиотеку.

2. В приложении должен присутствовать Drawer с двумя роутами Home, Artists. На экране artists отобразите список c данными из JSON-файла (artists.json), который находится в папке assets.

3. По клику на элемент списка отобразите детальную страницу артиста. В AppBar title отобразите имя исполнителя, а на страницу выведите информацию из поля about.

4. Также в Drawer текущий роут должен быть подсвечен цветом.

5. На детальной странице должен присутствовать AppBar со стрелкой назад.
