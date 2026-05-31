# Livre fête des mères — hébergement statique sur Railway
# Sert le fichier HTML unique à la racine du domaine.

FROM python:3.12-alpine

WORKDIR /app

# Le livre est servi comme page d'accueil (index.html)
COPY livre-fete-des-meres.html /app/index.html

# Railway fournit la variable $PORT au démarrage (8080 par défaut en local)
EXPOSE 8080

CMD ["sh", "-c", "python3 -m http.server ${PORT:-8080} --directory /app"]
