# flutter_route_example

### pubspec.yaml
```yaml
dependencies:
    auto_route: ^5.0.1

dev_dependencies:
    build_runner: ^2.2.1
    auto_route_generator: ^5.0.2
```

```terminal              
flutter packages pub run build_runner build              
```    



#
- İçeriğin detay sayfasına gitmek için
> 1: Detay sayfasının constructura gerekli parametre `@PathParam() required this.parametreAdi` şeklinde eklenir.

> 2: router.dart içerisinde `path` parametresi `:parametreAdi` şeklinde verilir.

> 3: bir nav_bar'dan başka bir nav_bar'a geçmeden aynı sayfaları görüntüleyebilmek için router.dart içinde ilgili nav_bar'lara aynı sayfa eklenir.

#
```
context.router.push(ProfileDetailRoute(userId: "$index"));

```