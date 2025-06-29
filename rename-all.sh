#!/bin/bash

# Убедись, что ты находишься в корне проекта
echo "🔄 Начинаю замену в текущей директории..."

# Список замен: (старое значение | новое значение)
declare -A replacements=(
  ["--font-title"]="--ui-font-headings"
  ["--font-text"]="--ui-font-body"
  ["--color-white"]="--ui-clr-bg-light"
  ["--color-primary"]="--ui-clr-action"
  ["--color-text-primary"]="--ui-clr-text-main"

  ["@include my-flex-center"]="@include ui-flex-align"
  ["@include my-text-title"]="@include ui-heading"
  ["@include my-text-body"]="@include ui-body-text"

  ["header__"]="site-nav__"
  ['class="_container"']='class="layout-container"'
  ['class="header"']='class="site-nav"'
)

# Расширения файлов, которые надо обработать
file_extensions="\.vue$|\.scss$|\.js$|\.ts$"

# Обрабатываемые файлы
files=$(find . -type f -regextype posix-extended -regex ".*(${file_extensions})")

for file in $files; do
  for key in "${!replacements[@]}"; do
    value="${replacements[$key]}"
    sed -i'' -e "s|$key|$value|g" "$file"
  done
done

echo "✅ Заменено. Весь проект теперь уникальный 🎉"
