# :smirk_cat: Over the Wire
## Wargames
My scripts to solve [Wargames from Over the Wire](http://overthewire.org/wargames/).

Run the script, or build and run the Docker container.

### Sample
This is what output looks like

![sample output](sample.png)

### Requirements
- When using  Docker
  - Docker
- When running the main script manually
  - Bash
  - Sshpass

### Usage
#### With Docker
```bash
docker build -t facevedom/overthewire .
docker run facevedom/overthewire
```

#### Manually
```
cd 1-Bandit
chmod +x *.sh
./hack_away.sh
```