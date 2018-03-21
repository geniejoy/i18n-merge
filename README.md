## file path: src/locale

## i18n init
npm run i18n:extract

## i18n create language file
npm run i18n:create "zh-Hans , zh-Hant"

## i18n update and merge
npm run i18n:update

## 如何運用到其他 project
1. copy gulpfile.js
2. 檢查下列路徑是否一致, 若不一致可調整  
   gulpfile.js::  
   const PATH_I18N_LANGUAGES = "./src/locale";  
   const FILE_SOURCE_I18N = "./src/locale/messages.xlf";  
3. edit package.json     
    "devDependencies": {  
        ....  
        "minimatch": "^3.0.2",  
        "gulp": "^3.9.1",  
        "gulp-cheerio": "^0.6.2",  
        "gulp-modify-file": "^0.1.0",  
        "gulp-remove-empty-lines": "0.0.8",  
        "gulp-rename": "^1.2.2",  
        "pretty-data": "^0.40.0"  
    }  
  
## Notices
1. source from https://github.com/alber999/angular2-webpack-starter
2. 調整了 gulpfile.js 使其可以正常 parse zh-Hans , zh-Hant, 不致將中文轉換成 &#38;#x8BD5;  
   ==> edit gulpfile.js  
        在所有 parserOptions 裡加入 'decodeEntities: false', ex:  
        parserOptions: {  
                xmlMode: true,  
                decodeEntities: false  
        }  
