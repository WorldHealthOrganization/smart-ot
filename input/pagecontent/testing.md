---
---
{% assign igId = site.data.fhir.igId %}
{% assign resourceKey = "ImplementationGuide/" | append: igId %}
{% assign resource = site.data.resources[resourceKey] %}
{% assign source = resource.source %}



These files allow a quick setup of working servers, for testing of the specification in a known configuration.

Prerequisites: [Docker](https://www.docker.com)

### Questionnaires and StructureMap Transformations

#### Matchbox server
The matchbox server configuration allows you to test the mappings. For more information: [https://github.com/ahdis/matchbox](https://github.com/ahdis/matchbox)

How to setup the server:
1. Download the <a href="https://raw.githubusercontent.com/WorldHealthOrganization/smart-ot/test-jct/testing/docker/questionnaires/.env" download>.env file</a>  
2. Download the <a href="https://raw.githubusercontent.com/WorldHealthOrganization/smart-ot/test-jct/testing/docker/questionnaires/docker-compose.yml" download>docker compose file</a>
3. From the same folder, run `docker-compose up -d`  
4. Navigate to http://localhost:<static_server_port> e.g. <a href="http://localhost:8087">http://localhost:8087</a>  
5. Follow the instructions there to setup and run the extractions


### Scheduling and Decision Logic, Measures
CQFRuler
1. Download the <a href="https://raw.githubusercontent.com/WorldHealthOrganization/smart-immunizations-measles/main/testing/docker/logic/.env" download>.env file</a>  
2. Download the <a href="https://raw.githubusercontent.com/WorldHealthOrganization/smart-immunizations-measles/main/testing/docker/logic/docker-compose.yml" download>docker compose file</a>
3. From the same folder, run `docker-compose up -d`  
4. Navigate to http://localhost:<static_server_port> e.g. <a href="http://localhost:8087">http://localhost:8087</a>  
5. Follow the instructions there to setup and run the plan definitions.