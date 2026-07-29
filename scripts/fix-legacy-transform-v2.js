const fs = require('fs');

const compatibleDirectory =
  'datapacks/CS-1347-compatible-transform/DataRaptor/' +
  'DRTransformPremigrationcasesCompatible';
const v2Directory =
  'datapacks/CS-1347-legacy-transform-v2/DataRaptor/' +
  'LegacyTransformCasesV2';

const compatibleItems = JSON.parse(
  fs.readFileSync(
    `${compatibleDirectory}/DRTransformPremigrationcasesCompatible_Items.json`,
    'utf8'
  )
);

const v2Items = compatibleItems.map((item, index) => ({
  ...item,
  GlobalKey: `LegacyTransformCasesV2Unified${String(index + 1).padStart(2, '0')}`,
  Name: 'LegacyTransformCasesV2',
  OmniDataTransformationId: {
    ...item.OmniDataTransformationId,
    Name: 'LegacyTransformCasesV2',
    VlocityMatchingRecordSourceKey: 'OmniDataTransform/LegacyTransformCasesV2'
  }
}));

fs.writeFileSync(
  `${v2Directory}/LegacyTransformCasesV2_Items.json`,
  `${JSON.stringify(v2Items, null, 4)}\n`
);

for (const fileName of [
  'LegacyTransformCasesV2_InputJson.json',
  'LegacyTransformCasesV2_SampleInputJson.json'
]) {
  const filePath = `${v2Directory}/${fileName}`;
  const input = JSON.parse(fs.readFileSync(filePath, 'utf8'));
  input.legacyCaseData = input.legacyCases;
  delete input.legacyCases;
  fs.writeFileSync(filePath, `${JSON.stringify(input, null, 4)}\n`);
}

const dataPackPath = `${v2Directory}/LegacyTransformCasesV2_DataPack.json`;
const dataPack = JSON.parse(fs.readFileSync(dataPackPath, 'utf8'));
dataPack.Description =
  'CS-1347 compatible legacy case transform using the unified cases contract.';
dataPack.ExpectedOutputJson = JSON.stringify(
  {
    cases: [
      {
        caseNumber: 'SI-CSD-7789001',
        caseKey: 'SI-CSD-7789001',
        sourceSystem: 'CSD',
        subject: 'Claim Payment Inquiry - EOB001',
        workBasket: 'Claims-Review',
        lastActivityDate: '2025-10-15',
        status: 'open',
        isClosed: false,
        description: 'Member disputes copay amount.',
        memberId: 'MBR100000001',
        provider: 'NPI1234567890',
        legacyId: 'SI-CSD-7789001',
        mea: 'Sarah Chen',
        interactionCreatedAt: '2025-10-15T09:32:00',
        interactionClosedAt: '2025-10-15T09:58:00',
        claims: [
          {
            id: 'EOB001',
            claimSubtype: null,
            claimStatus: null,
            claimReceivedDate: null
          }
        ],
        notes: [
          {
            when: '2025-10-15',
            author: 'Sarah Chen',
            text: 'Member called about EOB001.'
          }
        ],
        history: []
      }
    ]
  },
  null,
  2
);
fs.writeFileSync(dataPackPath, `${JSON.stringify(dataPack, null, 4)}\n`);
