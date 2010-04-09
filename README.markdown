# Letöltés
Git-tel:

	git clone http://github.com/virgo/iwiw-oauth-java-example.git

vagy svn-nel:

	svn checkout http://svn.github.com/virgo/iwiw-oauth-java-example.git

vagy [letölthető zip-ben](http://github.com/virgo/iwiw-oauth-java-example/archives/master).

# Kell hozzá
[Maven](http://maven.apache.org/download.html#Installation)

# Konfigurálás
Ebből a fájlból készíts másolatot: 
`src/main/java/net/oauth/example/consumer/webapp/consumer.properties.sample`

...ilyen néven: 
`src/main/java/net/oauth/example/consumer/webapp/consumer.properties`

Majd add meg benne a saját kulcsodat és titkos kulcsodat.

# Futtatás
	cd iwiw-oauth-java-example
	mvn jetty:run

A tesztalkalmazás a következő url-en érhető el:
[http://localhost:9091/iwiw-opensocial/iwiw.jsp](http://localhost:9091/iwiw-opensocial/iwiw.jsp)

# Egyebek
Készült az [OAuth Example Webapp (rev 1087)](http://oauth.googlecode.com/svn/code/java/example/webapp) alapján.

Szabadon felhasznnálható és módosítható Apache License, Version 2.0 alapján.
