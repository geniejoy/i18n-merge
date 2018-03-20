for lang in es en fr; do \
    ng build -o dist/$lang \
             --aot \
             -prod \
             --bh /$lang/ \
             --i18n-file=src/i18n/messages.$lang.xlf \
             --i18n-format=xlf \
             --locale=$lang; \
  done