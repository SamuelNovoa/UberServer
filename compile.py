import os
import zipfile
from pathlib import Path


def compile():
    print("Compressing datapack...")
    with zipfile.ZipFile('build/UberServer DP.zip', 'w', zipfile.ZIP_DEFLATED) as zipf:
        for root, _, files in os.walk('src/UberServer DP'):
            for file in files:
                file_path = Path(root) / file
                zipf.write(file_path, file_path.relative_to('src/UberServer DP'))

    print("Compressing resource pack...")
    with zipfile.ZipFile('build/UberServer RP.zip', 'w', zipfile.ZIP_DEFLATED) as zipf:
        for root, _, files in os.walk('src/UberServer RP'):
            for file in files:
                file_path = Path(root) / file
                zipf.write(file_path, file_path.relative_to('src/UberServer RP'))


if __name__ == "__main__":
    compile()
