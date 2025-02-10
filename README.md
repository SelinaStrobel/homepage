# Selina's Homepage

## Update Instructions
- if you created new pages, update `./index.html`
- if you use new fonts, update `./fonts_loader/fonts.css`
- export Affinity Designer with these settings: 
    ![affinity_designer_export_settings](./images/affinity_designer_export_settings.png)
- put these svg files in `./portfolio_pages/`, not `./portfolio_pages_out/`
- open the git bash terminal in the repo directory
- check what you changed with `git status`
- run `git add .`
- check what you changed with `git status`, now everything should be green
- run `git commit -m 'feat: I changed something'` (change the message to your liking)
- run `git push`
- check there are no errors on: https://github.com/SelinaStrobel/homepage/actions
- enjoy :)

## Build Instructions
```bash
make
```
