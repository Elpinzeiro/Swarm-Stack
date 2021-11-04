# Swarm-Stack Project
This code allows you to configure 3 ubuntu VMs and deploy on it a Swarm Stack by simply running a few lines of code, thanks to the Infrastructure as Code paradigm.
The Swarm essentially contains 9 services:

Registry: It is a storage and distribution system for named docker images. The same image might have multiple different versions, identified by their tags. It is configured in a separate file from docker-compose so that it can be deployed separately from other services.

Cms: It is a tool that helps build a website without having to write all the code from scratch. It Simulates the backend of the admin interface of a website.

Mariadb: The service takes care of replicating the database used by the CMS.

Pmy: It is intended to handle the administration of mysql over the Web and provide a simpler user experience.

Revproxy: This service implements a reverseproxy that retrieves content on behalf of a client from one or more servers. This content is then transferred to the client as if it came from the same proxy, which then appears to the client as a server.

Waf: This service implements web filtering, a technology that prevents users from viewing certain URLs or websites by preventing their browsers from loading pages from these sites

Logstash: is a flexible and highly portable open source tool. Written in JRuby, it processes events generated by specific inputs that are filtered and released in the form of a 
Log, through certain Outputs.

Elk: This service implements a search engine for all types of data, including textual, numeric, structured and unstructured. Raw data flows into Elasticsearch from a variety of sources, including logs, system metrics, and web applications.

Kibana: It is an extensible web interface for the visual presentation of the collected data.
