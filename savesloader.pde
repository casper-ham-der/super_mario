import java.io.PrintWriter;
import java.io.IOException;

void save1Save(String key1, String value) {
  StringDict dictSave1 = save1Load();
  
  dictSave1.set(key1, value);

  // Call function to save the StringDict
  try {
    saveStringDict(dictSave1, "data/saves/save1/load.txt");
  } catch (IOException e) {
    e.printStackTrace();
  }
}

void save2Save(String key1, String value) {
  StringDict dictSave2 = save2Load();
  
  dictSave2.set(key1, value);

  // Call function to save the StringDict
  try {
    saveStringDict(dictSave2, "data/saves/save2/load.txt");
  } catch (IOException e) {
    e.printStackTrace();
  }
}

void saveStringDict(StringDict dict, String fileName) throws IOException {
  PrintWriter output = createWriter(fileName);

  // Iterate through the StringDict and write each key-value pair
  String[] keys = dict.keyArray();
  for (String key : keys) {
    String value = dict.get(key);
    output.println(key + "\t" + value); // Using tab as a delimiter and adding a newline
  }

  // Close the PrintWriter
  output.flush(); // Write the remaining data
  output.close(); // Close the file
}



StringDict save1Load() {
  StringDict loadedDict = new StringDict();

  try {
    loadedDict = loadStringDict("data/saves/save1/load.txt");
    loadedDict.print();
  } catch (IOException e) {
    e.printStackTrace();
  }
  
  return loadedDict;
}

StringDict save2Load() {
  StringDict loadedDict = new StringDict();

  try {
    loadedDict = loadStringDict("data/saves/save2/load.txt");
    loadedDict.print();
  } catch (IOException e) {
    e.printStackTrace();
  }
  
  return loadedDict;
}


StringDict loadStringDict(String fileName) throws IOException {
  StringDict dict = new StringDict();
  BufferedReader reader = createReader(fileName);
  String line;

  while ((line = reader.readLine()) != null) {
    String[] parts = line.split("\t"); // Assuming the delimiter is a tab
    if (parts.length >= 2) {
      dict.set(parts[0], parts[1]);
    }
  }

  reader.close();
  return dict;
}


void startWorld(float worldstart, float levelstart){
  if (worldstart == 1) {
    if (levelstart == 1) {
      world11 = true;
    } else if (levelstart == 2) {
      world12 = true;
    } else if (levelstart == 3) {
      world13 = true;
    }
  } else if (worldstart == 2) {
    if (levelstart == 1) {
      world21 = true;
    } else if (levelstart == 2) {
      world22 = true;
    } else if (levelstart == 3) {
      world23 = true;
    }
  } else if (worldstart == 3) {
    if (levelstart == 1) {
      world31 = true;
    } else if (levelstart == 2) {
      world32 = true;
    } else if (levelstart == 3) {
      world33 = true;
    }
  }
}
