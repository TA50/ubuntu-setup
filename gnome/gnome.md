# Gnome Settings:

the gnome extension settings are stored in `./extensions.txt` file.
extensions were dumped using the following command:

```bash
dfconf dump /org/gnome/shell/extensions > extensions.txt
```

to restore the settings, run the following command:

```bash
dconf load /org/gnome/shell/extensions < extensions.txt
```

