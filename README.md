# DjangoBagels

This is the initia (and most likely temporary) Development Repository for the building & testing of the __Technovine__ Company Website, along with any potential WebApps & services that may go with it in the future.


<br />

## Details

As the very serious and totally professional name of the repository suggests, as of now the plan is to (ultimately) manage the site and its services using __Django__. However, in order to get something presentable online as quickly as possible, the __Django__ back-end will be integrated later on.



<br /><br />

---

# The Build

Once I've finished tweaking the slew of required config files, the build will be hosted using a __Docker Dev Container__. As of now, the (simplified) details of the container are as follows:


<br />

## Ubuntu Server

| Property | Value |
| :--- | :--- |
| Main Image<br />Distribution | Ubuntu 22.04<br />`ubuntu:22.04` |
| Container Name | `server` |
| Hostname | `lin-server` |
| Privileged | `true` |
| Command | `["bash"]` |
| Networks | • `backend`<br />• `frontend`<br />• `admin` |
| Ports | • `22`<br />• `80`<br />• `443`<br />• `8080` |
| Volumes | `../server-data`<br />`../server-storage`<br />`../site-data`<br />`../site-storage`<br />`../db-data` |



<br />

## Site Container

| Property | Value |
| :--- | :--- |
| Base Image<br />Distribustion | Image Name:<br />`technovine` <br />Build Reference:<br />`newspectrum/technovine:latest` |
| Main Image<br />Version/Tag | Python<br />`python:latest` |
| Additional<br />Images | • PHP <br />`php:latest` <br />• Apache <br />`apache:latest` |
| Container Name | `technovine` |
| Hostname | `technovine-site` |
| Privileged | `false` |
| Command | `[""]` |
| Networks | •`frontend`<br />• `admin` |
| Ports | • `5050`<br />• `9000:9900`<br /> |
| Volumes | `../site-data`<br />`../site-storage`<br />`../db-data` |



<!-- 
	
| Property | Value |
| :--- | :--- |
| text | `value` |
| text | `value` |
| text | `value` |
| text | `value` |
| text | `value` |
| text | `value` |
| Additional<br />Images | Image <br />`dist:tag` <br /><br />Image <br />`dist:tag` <br /><br /> |
| text | • `text`<br />• `text`<br />• `text`<br />• `text` |
| <b>Property</b> | <b>Inner-Title</b><br />• `text`<br />• `text`<br />• `text` |


 -->

