# Tree structure of C# Web API

## Basic tree structure
Just folders and files

Inside your current project

```bash
##---- Tree folder ----##
mkdir -p Data/SQL
mkdir Models
mkdir Helpers
mkdir Services

##---- Files ----##
##-- DbContext
touch Data/BaseContext.cs

##--- SQL
touch Data/SQL/Data.sql
touch Data/SQL/Tables.sql
```

## Medium tree structure
Controllers and Services

### Controllers 
Remember to create this structure for each controller

```bash
declare controller="<controller_name>"

## Folders 
mkdir "Controllers/${controller}"
cd "Controllers/${controller}"

## Files
touch "${controller}CreateController.cs"
touch "${controller}UpdateController.cs"
touch "${controller}DeleteController.cs"
touch "${controller}Controller.cs"
```

### Services
Remember to create this structure for each service

```bash
declare service="<service_name>"

##---- Folders ----##
mkdir -p "Services/${service}Repository"
cd "Services/${service}Repository"

##---- Folders ----##
## First create main repository class with its interface
touch "${service}Repository.cs"
touch "I${service}Repository.cs"

## Now HTTP methods
# corrent route: Services/ServiceRepository/
mkdir "${service}Methods"
cd "${service}Methods"

touch "${service}Get.cs"
touch "${service}Create.cs"
touch "${service}Update.cs"
touch "${service}Delete.cs"
```