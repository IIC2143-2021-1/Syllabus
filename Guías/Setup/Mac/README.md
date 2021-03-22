# Manual de Instalación

## Paso Número 1

Primero verifica si tienes _Homebrew_ instalado ejecutando:

```bash
brew -v
```

Si es que no lo tienes instalado, ejecuta:

```bash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## Paso Número 2

Luego instalermos _Ruby Version Manager_, también conocido como _rvm_. Para eso, ejecuta los siguientes comandos desde la consola:

```bash
brew install gnupg
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable
```

Con el primero comando instalamos GNU Privacy Guard, que es una herramienta de cifrado y firmas digitales. Con el segundo comando instalamos una llave que se utiliza (_automágicamente_) para verificar el paquete a instalar. Con el tercero comando instalamos _rvm_.

Para verificar que _rvm_ se instaló correctamente, reincia tu consola y corre:
```bash
rvm -v
```

## Paso Número 3

Ahora instala PostgreSQL en tu máquina. Para eso, ejecuta el siguiente comando:

```bash
brew install postgresql
```

## Paso Número 4

Instala Ruby 2.6 y Ruby on Rails 5.2.4

```bash
rvm install 2.6
gem install rails -v 5.2.4
```

## Paso Número 5

Ahora lo último antes de iniciar el proyecto! Debemos crear un nuevo `superuser` de PostgreSQL. Para esto primero debemos iniciar un servicio de PostgreSQL, ejecutando el siguiente comando:

```bash
brew services start postgresql
```

Ahora ingresamos a la consola de PostgreSQL:

```bash
psql postgres
```

Luego creamos un nuevo usuario. Para mantener consistencia entre todos y para que nadie tenga problemas relacionados al método de autenticación por default que les viene con la instalación, **vamos a crear un usuario con el mismo nombre que el usuario de tu sistema** (acá tomaremos como ejemplo que mi usuario se llama myuser).

Ahora, es posible que este usuario ya exista. Para verificar esto corre `\du` y revisa si ya está creado. En el caso de que no aparezca, ejecuta:

```bash
CREATE USER myuser WITH SUPERUSER PASSWORD 'mypassword';
```

Ojo con que la contraseña esté entre comillas simples.

Para salir de la consola de postgres corre `\q`.

## Paso Número 6

Ya tenemos todo para iniciar nuestro proyecto. Para esto, dirígete a la consola y ejecuta el siguiente comando:

```bash
rails new <nombre proyecto> --database=postgresql
```

Ahora nos movemos a nuestra carpeta del proyecto con:

```bash
cd <nombre proyecto>
```

Desde este punto en adelante, en nuestra consola siempre estaremos en el directorio del proyecto.

Y por último, corremos el siguiente comando que instalará sus dependencias del proyecto:

```bash
bundle install
```

## Paso Número 7

Ahora vamos a abrir el proyecto recién creado en nuestro editor favorito. Si tienes VS Code puedes correr `code .` o arrastrar la carpeta al ícono del editor.

Ahora que ya tenemos los archivos del proyecto, necesitamos setear la configuración de la base de datos que ocuparemos. 

Primero crea en la raiz de tu proyecto (directamente adentro de la carpeta \<nombre proyecto>) un archivo llamado **.env** (**¡y agrégalo a tu .gitignore!**) y adentro escribe las credenciales del usuario que creaste en el paso 7.

Si es que tu usuario ya existía, pueden dejar solo la variable `DB_USER`.

```env
# no se usan comillas
DB_USER=myuser
DB_PASSWORD=mypassword
```
Recuerda cambiar myuser y mypassword por tu usuario y contraseña!

Luego dirígete dentro de tu proyecto a `config/database.yml` y reemplaza su contenido con lo siguiente:

```yaml
default: &default
  adapter: postgresql
  encoding: unicode
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>

development:
  <<: *default
  database: <nombre proyecto>_development
  username: <%= ENV["DB_USER"] %>
  password: <%= ENV["DB_PASSWORD"] %>

test:
  <<: *default
  database: <nombre proyecto>_test

production:
  <<: *default
  url: <%= ENV["DATABASE_URL"] %>
```

## Paso Número 8

Necesitamos una base de datos para tu app! El siguiente comando creará una por ti:

```bash
rails db:create
```

## Paso Número 9

Ahora utilizando tu consola, corre el servidor del proyecto con el siguiente comando:

```
rails s
```

Ahora que tienes el servidor corriendo, dirígete a http://localhost:3000/ y debería aparecernos el mensaje _Yay! You’re on Rails!_
