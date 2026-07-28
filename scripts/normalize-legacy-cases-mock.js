const fs = require('fs');

const metadataPath =
  'force-app/main/default/customMetadata/MockData.LegacyCases.md-meta.xml';
const xml = fs.readFileSync(metadataPath, 'utf8');
const startToken = '<value xsi:type="xsd:string">';
const start = xml.indexOf(startToken);
const end = xml.indexOf('</value>', start);

if (start < 0 || end < 0) {
  throw new Error('LegacyCases DataBody__c value was not found');
}

const decodeXml = (value) =>
  value
    .replaceAll('&quot;', '"')
    .replaceAll('&apos;', "'")
    .replaceAll('&lt;', '<')
    .replaceAll('&gt;', '>')
    .replaceAll('&amp;', '&');

const encodeXml = (value) =>
  value
    .replaceAll('&', '&amp;')
    .replaceAll('"', '&quot;')
    .replaceAll('<', '&lt;')
    .replaceAll('>', '&gt;');

const jsonStart = start + startToken.length;
const subscribers = JSON.parse(decodeXml(xml.slice(jsonStart, end)));

for (const subscriber of subscribers) {
  for (const interaction of subscriber.interactions ?? []) {
    const parentNotes = interaction.notes ?? [];

    for (const intent of interaction.serviceIntents ?? []) {
      intent.isClosed =
        String(intent.status ?? '').toLowerCase() === 'closed';
      intent.history ??= [];
      intent.provider ??= { id: null, name: null };

      const normalizedClaims = (intent.claims ?? []).map((claim) => {
        if (claim && typeof claim === 'object') {
          return {
            id: claim.id ?? null,
            claimSubtype: claim.claimSubtype ?? null,
            claimStatus: claim.claimStatus ?? null,
            claimReceivedDate: claim.claimReceivedDate ?? null
          };
        }
        return {
          id: claim ?? null,
          claimSubtype: null,
          claimStatus: null,
          claimReceivedDate: null
        };
      });
      intent.claims = normalizedClaims
        .map((claim) => claim.id)
        .filter((claimId) => claimId !== null && claimId !== '');
      intent.normalizedClaims = normalizedClaims;

      const childNotes = (intent.notes ?? []).map((note) => {
        if (note && typeof note === 'object') {
          return {
            when: note.when ?? null,
            author: note.author ?? null,
            text: note.text ?? null
          };
        }
        return {
          when: intent.lastActivityDate ?? null,
          author: interaction.meaName ?? null,
          text: note ?? null
        };
      });

      const interactionNotes = parentNotes
        .map((note) => {
          if (note && typeof note === 'object') {
            return {
              when: note.when ?? null,
              author: note.author ?? null,
              text: note.text ?? null
            };
          }
          return {
            when: interaction.createdAt ?? null,
            author: interaction.meaName ?? null,
            text: note ?? null
          };
        })
        .filter((note) => note.text !== null && note.text !== '');

      const newInteractionNotes = interactionNotes.filter(
        (parentNote) =>
          !childNotes.some(
            (childNote) =>
              childNote.when === parentNote.when &&
              childNote.author === parentNote.author &&
              childNote.text === parentNote.text
          )
      );
      intent.notes = [...childNotes, ...newInteractionNotes];
    }
  }
}

const normalizedJson = encodeXml(JSON.stringify(subscribers));
const updatedXml =
  xml.slice(0, jsonStart) + normalizedJson + xml.slice(end);
fs.writeFileSync(metadataPath, updatedXml, 'utf8');
