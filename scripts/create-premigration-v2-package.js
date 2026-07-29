const fs = require('fs');
const path = require('path');

const sourceName = 'LegacyTransformCasesV2';
const targetName = 'DRTransformPremigrationcasesv2';
const sourceDirectory =
  `datapacks/CS-1347-legacy-transform-v2/DataRaptor/${sourceName}`;
const targetDirectory =
  `datapacks/CS-1347-premigration-v2/DataRaptor/${targetName}`;

fs.mkdirSync(targetDirectory, { recursive: true });

for (const sourceFileName of fs.readdirSync(sourceDirectory)) {
  const targetFileName = sourceFileName.replaceAll(sourceName, targetName);
  const sourcePath = path.join(sourceDirectory, sourceFileName);
  const targetPath = path.join(targetDirectory, targetFileName);
  const content = fs.readFileSync(sourcePath, 'utf8');
  fs.writeFileSync(
    targetPath,
    content.replaceAll(sourceName, targetName),
    'utf8'
  );
}
