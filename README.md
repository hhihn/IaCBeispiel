# Terraform Projekt – Nginx Container mit Docker

Dieses Projekt demonstriert die **Grundlagen von Infrastructure as Code (IaC)**
mit **Terraform** anhand eines einfachen Beispiels.

Terraform wird verwendet, um:
- ein **Docker Image (nginx:latest)** herunterzuladen
- einen **Docker Container** zu erstellen
- den Container über einen **Port** verfügbar zu machen

Das Projekt eignet sich besonders für **Lehrveranstaltungen zu Cloud / DevOps / IaC**.

---

## Architekturübersicht
```
Terraform
   │
   ▼
Docker Provider
   │
   ▼
Docker Image (nginx:latest)
   │
   ▼
Docker Container
   │
   ▼
http://localhost:8080
```


---

## Voraussetzungen

- **Docker** (muss laufen)
- **Terraform** (Version >= 1.x)

Prüfen:
```bash
docker --version
terraform --version
```

## Dateien im Detail
`main.tf

Enthält die zentrale Terraform‑Konfiguration:

    Definition des Docker Providers
    Download des Docker Images nginx:latest
    Erstellung eines Docker Containers

Wichtige Punkte:

    Interner Container‑Port: 80
    Externer Host‑Port: 8080
    Der Container ist danach über den Browser erreichbar

variables.tf`

Definiert Variablen für das Projekt:

| Variable | Beschreibung | Default |
| -------- | ------------ | ------- |
| container_name | Name des Docker Containers | terraform-nginx |
| external_port | Externer Port auf dem Host | 8080 |
 
    Hinweis: In der aktuellen Version werden die Default‑Werte verwendet.

`outputs.tf`

Gibt nach terraform apply wichtige Informationen aus:

    Container Name
    Container ID
    URL der Anwendung

Beispiel:

    url = http://localhost:8080

outputs.tf

# Terraform Workflow
## Initialiseren 
```bash
terraform init
```

Lädt:

    den Docker Provider
    alle benötigten Abhängigkeiten

## Ausführungsplan anzeigen
```bash
terraform plan
```
Zeigt:

    welche Ressourcen erstellt werden
    ohne Änderungen vorzunehmen

## Infra erstellen
```bash
terraform apply
```

## Infra aufräumen
```bash
terraform destroy
```