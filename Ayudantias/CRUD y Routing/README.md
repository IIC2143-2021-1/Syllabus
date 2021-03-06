# 3. CRUD + ROUTING

## Lo que lograremos esta ayudantía:

- Crear una aplicación básica con modelo, vista y controlador
- Definir y utilizar rutas para la aplicación
![Vista previa app](images/img_02.png)

## CRUD

Create (crear), Read (leer), Update (actualizar) y Delete (eliminar) son las cuatro operaciones básicas ejecutadas en la base de datos y se ejecutan sobre instancias de los modelos de una aplicación. Cada una de las operaciones se realiza mediante alguna acción del controlador:

- Create: new, create
- Read: index, show
- Update: edit, update
- Delete: delete

Estas acciones se definen bajo la misma sintaxis que las funciones de Ruby y se pueden definir o bien en la creación del controlador o bien manualmente en el archivo de este. Estas funciones son llamadas al interactuar con las distintas vistas de la aplicación y permiten combinar la navegación a través de la página junto con las solicitudes a la base de datos. La configuración de esta interacción está mediada por el archivo `routes.rb` encontrado en la carpeta `config` de la aplicación.

## CRUD: Scaffold

**Scaffold** nos permite crear el modelo con su migración, la vista y el controlador con solo un comando. ✨*Es como magia.✨*

El comando para utilizarlo es:

```ruby
rails g scaffold {Nombre_modelo} {atributo1}:{tipo_atributo1} {atributo2}:{tipo_atributo2} ...
```
Si bien se puede ver rápido y fácil de utilizar, algunas **desventajas son:**

- Puede generar archivos y funciones que nunca utilicemos.
- No permite entender bien cómo funciona MVC ya que hace todo el trabajo.

**Recomendamos hacerlo manualmente para aprender correctamente cómo funciona el sistema por detrás.**

## CRUD: Modelos
Un modelo funciona como un objeto que guarda la información de sus atributos en una base de datos. Para crear un modelo se ejecuta el siguiente comando:

```ruby
rails g model {Nombre_modelo} {atributo1}:{tipo_atributo1} {atributo2}:{tipo_atributo2} ...
```

Este comando creará una lista de archivos, de los cuales los principales son:

- `db/migrate/20210404202133_create_{Nombre_modelo}.rb` : **Migración hacia la base de datos. E**l número variará ya que es la marca de tiempo de cuándo se ejecutó el comando.
- `app/models/{Nombre_modelo}.rb` : **Archivo del modelo creado.**

**Importante: Aquí el nombre del modelo debe ir en singular.**

Luego de crear cada modelo, hay que realizar una migración en la base de datos con el comando:

```
rails db:create
```
De esta manera se crea la tabla correspondiente al modelo creado y se puede trabajar con él mediante la aplicación.

## CRUD: Controlador y vistas
Un controlador es una entidad que permite la interacción con la base de datos de una aplicación mediante las vistas (páginas de la aplicación). Los controladores se crean con el siguiente comando:

```
rails g controller {Nombre_controlador} {método1} {método2} {método3}...
```
**Importante: Aquí el nombre del controlador debe ir en plural.**

Este comando creará una lista de archivos, de los cuales los principales son:

- `app/controllers/{nombre_controlador}_controller.rb`: Este es el archivo del controlador. Acá se configuran las acciones para realizar la navegación en la aplicación y las solicitudes a la base de datos. Estas solicitudes son manejadas por el archivo `routes.rb`, cuyo funcionamiento se detalla en la siguiente sección.
- `app/views/{nombre_controlador}/{método1}.html.erb`: Vista asociada al primer método declarado en la creación del controlador. Se creará una para cada acción declarada y podrá llamar a las variables definidas en el método {método1} del controlador correspondiente usando la sintaxis `<% {@variable}%>` o `<%= {variable}%>` dependiendo de si se quiere mostrar la variable en la vista o no (la segunda sintaxis permite mostrar la variable en la vista).
- `app/helpers/{nombre_controlador}_helper.rb`: El uso de este archivo es opcional. Este archivo sirve para crear funciones que pueden ser luego llamadas en el controlador.

## Rails Router
Es el encargado de reconocer las URL de una solicitud y enviarlas al controlador correspondiente.

Su sintaxis es la siguiente:
```ruby
{METODO HTTP} '{URL}', to: '{CONTROLADOR}#{METODO}'
```
Para ver las rutas que tenemos en nuestra aplicación podemos acceder a `config/routes.rb` o correr el comando rails routes.
![Rutas](images/img_04.png)

## Path/URL Helpers

Al correr el comando `rails routes` notarás lo siguiente:

La primera parte de cada línea corresponde a los **URL Helpers**, los cuales servirán para direccionar a una URL específica al realizar una acción dentro de nuestra aplicación, por ejemplo si quisiéramos acceder a la página de una instancia específica de un modelo:

```ruby
<%= link_to 'Ver modelo', {helper_indicado_en_routes}_path(modelo.id) %> 
```

En el archivo `config/routes.rb` se pueden personalizar las rutas. Supongamos tenemos un modelo `Game`, con su controlador `Games`, el cual tiene un método `index` para ver la lista de juegos en la vista `games/index.html.erb`. La línea correspondiente en el archivo `routes.rb` sería:

```ruby
get 'games/index', to: 'games#index', as: 'games_index'
```
En la cual configuramos una ruta personalizada, la cual se debe llamar como `games_index_path`, en las vistas correspondientes:

```ruby
<%= link_to 'Ver lista de juegos', games_index_path %> 
```

Finalemente, hay algunas rutas que se configuran con parámetros incluidos en ella:
```ruby
get 'games/:id', to: 'games#show', as: 'games_show'
```
A las cuales se les debe ingresar un parámetro en el helper para llegar a la vista indicada:

```ruby
<%= link_to 'Ver lista de juegos', games_show_path(@game.id) %>
```
En el ejemplo se usa la id como parámetro, lo que va a permitir usar esa id en el controlador y vista a los cuales se llegue mediante el link creado.