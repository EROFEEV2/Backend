import sqlite3

conn = sqlite3.connect("library.db")
cur = conn.cursor()

cur.execute("""
    CREATE TABLE IF NOT EXISTS books (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    author TEXT,
    year INTEGER
    ) 

""")
conn.commit()


def add_book():
    title = input("Название: ")
    author = input("Автор: ")
    year = int(input("Год: "))
    cur.execute(
        "INSERT INTO books (title, author, year) VALUES (?, ?, ?)",
        (title, author, year)
)
    conn.commit()
    print("Книга добавлена!")



def show_books():
    cur.execute("SELECT id, title, author, year FROM books ORDER BY id ")
    rows = cur.fetchall()
    if not rows:
        print("Книг пока нет.")
        return
    for row in rows:
        print(f"{row[0]}. {row[1]} - {row[2]} ({row[3]})")



while True:
    print("\n1 - добавить книгу")
    print("2 - показать все книги")
    print("0 - выход")
    choice = input("Выбери: ")

    if choice == "1":
        add_book()
    elif choice == "2":
        show_books()
    elif choice == "0":
        break
    else:
        print("Нет такого пункта.")

conn.close()
print("Пока!")