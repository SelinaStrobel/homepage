# Selina's Homepage

```bash
rm -r ./portfolio_pages_out/
mkdir ./portfolio_pages_out/
find ./portfolio_pages/ -type f -printf "./fonts_loader/load_fonts_in_css.sh '%p' './portfolio_pages_out/%f'\n" | sh
```
