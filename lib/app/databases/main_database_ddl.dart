List<String> mainDatabaseDdlCreate = [
  '''
    DROP TABLE IF EXISTS todos;
  ''',
  '''
    CREATE TABLE todos (
      id INTEGER PRIMARY KEY AUTOINCREMENT, 
      title TEXT NOT NULL,
      desc TEXT,
      status TEXT,
      start INTEGER,
      end INTEGER,
      created INTEGER,
      updated INTEGER
    );
  '''
];

List<String> mainDatabaseDdlUpdate = [
  '''
    DROP TABLE IF EXISTS todos;
  ''',
  '''
    CREATE TABLE todos (
      id INTEGER PRIMARY KEY AUTOINCREMENT, 
      title TEXT NOT NULL,
      desc TEXT,
      status TEXT,
      start INTEGER,
      end INTEGER,
      created INTEGER,
      updated INTEGER
    );
  '''
];
