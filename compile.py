import os
import zipfile
import shutil
from pathlib import Path

INSTANCE_DIR = Path("C:/Users/samue/curseforge/minecraft/Instances/IagoServer 1.21.11 (1)")


def compile():
    # Paths for the built zip files
    datapack_zip = Path('build/UberServer DP.zip')
    resourcepack_zip = Path('build/UberServer RP.zip')
    
    # Destination paths
    resourcepack_dest = INSTANCE_DIR / "resourcepacks"
    datapack_dest = INSTANCE_DIR / "saves" / "Mundo nuevo" / "datapacks"
    
    print("Compressing datapack...")
    with zipfile.ZipFile(datapack_zip, 'w', zipfile.ZIP_DEFLATED) as zipf:
        for root, _, files in os.walk('src/UberServer DP'):
            for file in files:
                file_path = Path(root) / file
                zipf.write(file_path, file_path.relative_to('src/UberServer DP'))

    print("Compressing resource pack...")
    with zipfile.ZipFile(resourcepack_zip, 'w', zipfile.ZIP_DEFLATED) as zipf:
        for root, _, files in os.walk('src/UberServer RP'):
            for file in files:
                file_path = Path(root) / file
                zipf.write(file_path, file_path.relative_to('src/UberServer RP'))
    
    # Copy files to instance directories
    print("\nCopying files to instance...")
    
    # Ensure destination directories exist
    resourcepack_dest.mkdir(parents=True, exist_ok=True)
    datapack_dest.mkdir(parents=True, exist_ok=True)
    
    # Copy resource pack
    rp_target = resourcepack_dest / resourcepack_zip.name
    shutil.copy2(resourcepack_zip, rp_target)
    print(f"✓ Resource pack copied to: {rp_target}")
    
    # Copy datapack
    dp_target = datapack_dest / datapack_zip.name
    shutil.copy2(datapack_zip, dp_target)
    print(f"✓ Datapack copied to: {dp_target}")
    
    print("\nBuild complete!")


if __name__ == "__main__":
    compile()
