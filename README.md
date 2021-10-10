# dir-lookup-batch-script

## Description:

A batch script for data quality management. A batch script for validating the existence of a given filename/code that points to a file present in a particular directory; two resulting text documents are created, consisting of either a list of files found by the provided filecodes (lookupresults.txt) and therefore exist in the directory, or -- from the set of provided filecodes/names -- a list of files that were not found and therefore not present in the directory.

## Status:

Incomplete. Functionality is viable and can be easily made to fit to purpose.

## Usage:

```sh
git clone https://github.com/christopher-christofi/dir-lookup-batch-script
```

The 'lookup.bat' script is executable and should be in the same level as the directory. Specification of the directory has not been set in the script, so all directories will also be searched if they share the same level as the script.

A find_codes.txt document should be created containing the key codes to search the data directory. Each code or keyword should be on a newline and does not require any file format suffix.

## Test:

Requirements:
- Python 3+

```sh
git clone https://github.com/christopher-christofi/dir-lookup-batch-script
```

To generate a test dataset, follow the instructions below.

```sh
cd dir-lookup-batch-script && mkdir data && python tests\_test_file_gen.py
```

The python script will generate a pre-determined sample of randomly generated -- fake data populated -- test text files to be saved into the made 'data' directory. (Default at 10,000). A codes.txt file will also be generated that denotes each of the randomly generated test files in the data directory, then a selection of such codes should be added to the created find_codes.txt, for which will be used by the batch script. Then execute the lookup.bat file.

## Example Topology:

.
├── data/
|    ├─ file1.txt
|    ├─ file2.mp3
|    ├─ file3.txt
|    ├─ more_data/
|       ├─ file4.txt
|       ├─ file5.jpg
|
├── lookup.bat
|    ├─ the executable script
|
├── find_codes.txt
|    ├─ provide the desired files to locate
|         e.g: file1, file4, file5 (all on newline no ",")
|
├── lookupresults.txt
|       after search this will contain file1 and file4
├── lookuperrors.txt
        after search this will contain file9