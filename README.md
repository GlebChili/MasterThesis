# Магистерская диссертация "Гомотопическая теория типов и ее модели"

Самая последняя успешная версия работы всегда находится по адресу 
https://masterthesis.up.railway.app/MasterThesis.pdf

Главным файлом работы является `MasterThesis.lagda.tex`, являющийся 
[Literate Agda TeX](https://agda.readthedocs.io/en/v2.6.3/tools/literate-programming.html#literate-agda-tex) файлом
(LaTeX со вставками кода на Agda). Для сборки проекты необходимо собрать `MasterThesis.lagda.tex`
с помощью LaTeX бэкенда Agda командой
```bash
agda --latex MasterThesis.lagda.tex
```
(Agda должна быть установлена и зарегистрирована в `PATH`).

Agda произведет type check (проверку всех доказательств), и, в случае корректности всех вставок кода,
поместит в сабдиректорию `latex` поместит результирующий  предобработанный LaTeX файл `MasterThesis.tex`
вместе с библиотекой `agda.sty`, необходимой для корректной подсветки блоков кода и работы ссылок на участки кода.

Результирующий `MasterThesis.tex` можно скомпилировать в PDF любым стандартным компилятором LaTeX
(автор использует `pdflatex`).

Подробнее а генерации LaTeX файлов в Agda можно прочитать [здесь](https://agda.readthedocs.io/en/v2.6.3/tools/generating-latex.html).

## Информация о версии Agda и зависимостях

Данный проект был собран и протестирован с помощью Agda 2.6.3. Проект не зависит от каких-либо дополнительных
библиотек, включая стандартную библиотеку Agda (`agda-stdlib`).