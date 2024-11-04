# Wstępna konfiguracja Git'a
git config --global user.name "Krzysztof Bruszewski"
git config --global user.email krzysztof.bruszewski@gmail.com
git config --global color.ui auto
git config --global pull.rebase true
git config --global core.editor "nano"
git config --list

# Generowanie klucza SSH do GitLab
ssh-keygen -t ed25519
cat ~/.ssh/id_ed25519.pub | clip
ssh -T git@github.com

git init - utworzenie nowego repozytorium z istniejącego projektu
git clone <repo_url> – sklonowanie repozytorium zdalnego (GitHub) na maszynie lokalnej
git rm <file or folder> - usunięcie pliku z repo
git add <file or folder> – stageowanie (kwalifikacja/dodanie) plików do wysyłki na repozytorium np. git add *.sh *.log *.py
git add -A – dodaj wszystkie zmienione lub nowe pliki do wysyłki na repozytorium
git add -u – dodaj tylko zmienione pliki do wysyłki na repozytorium
git commit –m '<commit_message>' – stworzenie checkpointu z opisem wcześniej zakwalifikowanych plików
git commit --amend - poprawianie commita przed wysłaniem na serwer np. git commit -m "adding sql files"
git push origin <branch> - faktyczne wysyłka zacommitowanych plików do zdalnego repozytorium np. git push origin master
git push - wysyłka zacommitowanych plików do zdalnego repozytorium, jeśli niezmieniamy brancha
.gitignore – plik, który mówi gitowi, jakich plików ma nie trackować (tworzymy poprzez touch .gitignore w głównym katalogu repozytorium).
git pull origin main - pobranie na dysk lokalny kopii z repozytorium
git pull --all - pobranie na dysk lokalny wszystkich branchy z repozytorium
git pull - pobieranie na dysk brancha z repozytorium zdalnego, jeśli wcześniej była komunikacja z tym branchem
git clone -b <branchname> <remote-repo-url> - skopiowanie wybranego brancha
git branch -f <new_local_branch_name> origin/remote_branch_name - pobranie wybranego brancha zdalnego
git checkout <new_local_branch_name> - przejście na pobranego brancha

# Kilka komend, które mogą się okazać pomocne w codziennej pracy:
git diff <file> - pokazanie zmian w danym pliku w formie tekstowej
git branch – sprawdzenie, na jakim branchu się aktualnie znajdujemy
git checkout <branch> - przejście na wskazany branch,
git log -<liczba> - pokazanie N ostatnich commitów na danym branchu np. git log -2 - wyświetlanie dwóch ostatnich commitów
git status – sprawdzenie, jaki status mają pliki na lokalnej maszynie, nad którymi pracujemy,
git tag <tag> - stworzenie milestone’a w danym momencie rozwoju kodu (podobne do commita, ale używa się rzadziej, raczej przy wersjonowaniu kodu).
git checkout -b <branch new> <branch old> - skopiowanie brancha
git branch --delete <branch> - usunięcie brancha

# Pobranie pojedynczego pliku z origin/master
git fetch
git restore <file>

# Usunięcie pliku z obszaru śledzenia
git rm --cached <file>

# Pobranie wybranego brancha zdalnego lokalnie
git branch -r
git checkout -b <local_branch> <origin>/<branch>

# Synchronizacja lokalnego repozytorium do stanu na zdalnym origin/master
git reset --hard
git clean -fd

# Wysyłanie brancha na zdalne repozytorium
git clone <remote_url>
git checkout -b new-branch

git branch -a
* new-branch
git add .
git commit -m "..."
git push --set-upstream origin new-branch

git add .
git commit -m "..."
git push origin

# Dodawanie projektu do GitHuba
# Inicjowanie lokalnego katalogu jako repozytorium Git.
git init -b main

# Dodawanie wszystkich plików do commita
git add -A
git commit -m "First commit"

# Skopiuj adres URL zdalnego repozytorium.
git remote add origin  <remote_url>
git remote -v

# Wypchnięcie lokalnego repozytorium na GitHub
git push origin main

# Cheatsheet z komend Gita: 
https://training.github.com/downloads/pl/github-git-cheat-sheet/
https://www.atlassian.com/git/tutorials/learn-git-with-bitbucket-cloud
