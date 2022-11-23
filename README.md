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
| Base Image<br />Version/Tag | Ubuntu 22.04<br />`ubuntu:22.04` |
| Container Name | `server` |
| Hostname | `lin-server` |
| Privileged | `true` |
| Command | `["bash"]` |
| Networks | • `backend`<br />• `frontend`<br />• `admin` |
| Ports | • `22`<br />• `80`<br />• `443`<br />• `8080` |
| Volumes | `../server-data`<br />`../server-storage`<br />`../site-data`<br />`../site-storage`<br />`../db-data` |



<br />

## Site Container

Due to the complicated, multi-image structure and the vast quantity of pre-coded files that will be loaded into the initial build, the __Site Container__ is the only one that *isn't* being built with a base image from the __DockerHub Public Library__. Instead, this will be from my own, private Docker repository. The image is built and updated automatically when a push is made to the linked __BitBucket__ repo (this GitHub repo is still far too *"in the works"* to setup an auto-build).

| Property | Value |
| :--- | :--- |
| Base Image<br />Distribustion | • Image Name:<br />`technovine` <br />• Build Reference:<br />`newspectrum/technovine:latest` |
| Main Image<br />Version/Tag | Python<br />`python:latest` |
| Additional<br />Images | • PHP <br />`php:latest` <br />• Apache <br />`apache:latest` |
| Container Name | `technovine` |
| Hostname | `technovine-site-site` |
| Privileged | `false` |
| Command | `[""]` |
| Networks | •`frontend`<br />• `admin` |
| Ports | • `5050`<br />• `9000:9900`<br /> |
| Volumes | `../site-data`<br />`../site-storage`<br />`../db-data` |


### Python Build

Included in __Python Build__ section of the `technovine.dockerfile` is a reference to a pre-written `requirements.txt` file for PIP to install the required packages and their dependences- most specifically, __Django__ and __Jupyter Notebooks__.

I've added the current contents of the `requirements.txt` below, as well as the `Dockerfile` syntax, for reference.

#### Python `requirements.txt`

```python
pipenv==2022.10.12
Django==4.0.6
pyOpenSSL==22.1.0
cryptography==38.0.3
jupyter==1.0.0      
jupyter_client==7.4.7
jupyter-console==6.4.4
jupyter_core==5.0.0
json5==0.9.8
jsonschema==4.7.1
Markdown==3.4.1
numpy==1.23.4
websocket-client==1.4.2
```

```dockerfile
# ...
# Declare Environment Variables for Python Directories
ENV PyDir="/dev/python"
ENV PyAppDir="/dev/python/app"
ENV PyScripts="/dev/python/scripts"

# Use Bash's `mkdir -p` command to create the $PyAppDir along with any missing parent directories (because they are, in fact,  all missing).
RUN mkdir -p -v ${PyAppDir}

# Set the Current Working Directory to '/dev/python/app' and copy the requirements file (located in the root of the docker base image)
WORKDIR ${PyAppDir}
COPY "./requirements.txt" .

# Install packages listed in the requirements file
RUN pip install --no-cache-dir -r requirements.txt
#...
```


<!-- 

★ Code Blocks
```python

```

```dockerfile

```

```yaml

```

```json

```

```bash

```

```powershell

```

```markdown

```

```html

```

```css

```

```less

```

```sass

```

```scss

```

```javascript

```

```typescript

```





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

