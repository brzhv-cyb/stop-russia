 # Linode instance automation

Скрит для створення і налаштування інстансів бомбардувальників у Linode в один клік.

### Як використовувати

Для початку треба встановити і зконфігурувати linode-cli:  
https://www.linode.com/docs/guides/linode-cli/

Після цього запустити команду ініціалізації:

```shell
./init.sh 10 strongRootPass
```
where 10 its count of instances which will be up
where strongRootPass password for your instances which will be up

Скрипт запускає інстанс, на якому запускається докер імедж через команду screen для ручного моніторингу скриптів.

Більше про screen:  
https://www.tecmint.com/screen-command-examples-to-manage-linux-terminals/

Щоб видалити створені інстанси:

```shell
./clear.sh
```

### Як це працює

Скрипт ініціалізації створює інстансу у випадковому активному регіоні і налаштовує на ній все для бомбардування. Використовується найдешевший тип інстансів.

### Доповнюємо разом

Пишіть issues, створюйте pull requests.  

***************************************************************************************

Script for creating and setting up digital ocean instances with bombardier

### How to use

At first install and setup `linode-cli` on your machine:
https://www.linode.com/docs/guides/linode-cli/


After that run initialization script 

```shell
./init.sh 10 strongRootPass
```
where 10 its count of droples which will be up

Script creates Linode instances, where docker images is run using screen command, for manual script monitoring

More about screen:
https://www.tecmint.com/screen-command-examples-to-manage-linux-terminals/

To remove created instances run:

```shell
./clear.sh
```

### How it works 

Script creates droplet in random active region and setup everything for bombardier.
Used cheapest instances

### Contributing

Create issues, create pull requests.
