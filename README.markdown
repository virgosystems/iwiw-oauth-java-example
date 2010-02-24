# Letöltés
git clone http://github.com/virgo/iwiw-oauth-java-example.git
vagy:
http://github.com/downloads/virgo/iwiw-oauth-java-example/iwiw-oauth-java-example.zip

# Konfigurálás
Ebből a fájlból készíts másolatot:
src/main/java/net/oauth/example/consumer/webapp/consumer.properties.sample
...ilyen néven:
src/main/java/net/oauth/example/consumer/webapp/consumer.properties

Majd add meg benne a saját kulcsodat és titkos kulcsodat.

# Futtatás
cd iwiw-oauth-java-example
mvn jetty:run

A tesztalkalmazás a következő url-en érhető el:
http://localhost:9091/iwiw-opensocial/iwiw.jsp

# Egyebek
Készült az OAuth Example Webapp alapján, amely elérhető innen:
http://oauth.googlecode.com/svn/code/java/example/webapp (rev 1087)

Szabadon felhasznnálható és módosítható Apache License, Version 2.0 alapján.
