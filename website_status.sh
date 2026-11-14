#!/bin/bash

# Список вебсайтів для перевірки
websites=(
    "https://google.com"
    "https://facebook.com"
    "https://twitter.com"
)

# Назва файлу логів
log_file="website_status.log"

# Очищаємо файл логів перед новою перевіркою
> "$log_file"

for site in "${websites[@]}"; do
    # -s: без прогрес-бару, -L: слідувати переадресаціям,
    # -o /dev/null: не виводити тіло відповіді, -w: вивести лише HTTP-код
    status_code=$(curl -s -L -o /dev/null -w "%{http_code}" --max-time 10 "$site")

    if [ "$status_code" -eq 200 ]; then
        echo "<$site> is UP" >> "$log_file"
    else
        echo "<$site> is DOWN" >> "$log_file"
    fi
done

echo "Результати записано у файл логів: $log_file"
