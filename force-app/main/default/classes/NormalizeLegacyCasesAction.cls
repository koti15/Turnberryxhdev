/**
 * Normalizes legacy collection fields that the older DataRaptor designer
 * cannot reliably merge. Final unified field mapping remains in the DataRaptor.
 */
public with sharing class NormalizeLegacyCasesAction implements ICallableAction {

    public Object execute(Map<String, Object> args) {
        Object source = args == null ? null : args.get('legacyCaseData');
        List<Object> subscribers = asList(deepCopy(source));

        for (Object subscriberValue : subscribers) {
            Map<String, Object> subscriber = asMap(subscriberValue);
            if (subscriber == null) continue;

            for (Object interactionValue :
                asList(subscriber.get('interactions'))) {
                Map<String, Object> interaction = asMap(interactionValue);
                if (interaction == null) continue;

                String interactionDate =
                    stringValue(interaction.get('createdAt'));
                String interactionAuthor =
                    stringValue(interaction.get('meaName'));
                List<Object> parentNotes =
                    normalizeNotes(
                        interaction.get('notes'),
                        interactionDate,
                        interactionAuthor
                    );

                for (Object intentValue :
                    asList(interaction.get('serviceIntents'))) {
                    Map<String, Object> intent = asMap(intentValue);
                    if (intent == null) continue;

                    String intentDate =
                        firstNonBlank(
                            stringValue(intent.get('lastActivityDate')),
                            interactionDate
                        );
                    List<Object> normalizedNotes =
                        normalizeNotes(
                            intent.get('notes'),
                            intentDate,
                            interactionAuthor
                        );
                    normalizedNotes.addAll(parentNotes);

                    intent.put(
                        'normalizedClaims',
                        normalizeClaims(intent.get('claims'))
                    );
                    intent.put('normalizedNotes', normalizedNotes);
                    intent.put(
                        'normalizedHistory',
                        normalizeHistory(intent.get('history'))
                    );
                    intent.put(
                        'derivedIsClosed',
                        'closed'.equalsIgnoreCase(
                            stringValue(intent.get('status'))
                        )
                    );

                    Map<String, Object> provider =
                        asMap(intent.get('provider'));
                    intent.put(
                        'providerId',
                        provider == null ? null : provider.get('id')
                    );
                }
            }
        }

        return new Map<String, Object>{
            'normalizedLegacyCaseData' => subscribers
        };
    }

    private static List<Object> normalizeClaims(Object source) {
        List<Object> result = new List<Object>();
        for (Object claimValue : asList(source)) {
            if (claimValue == null) continue;
            Map<String, Object> existing = asMap(claimValue);
            if (existing != null) {
                result.add(existing);
            } else {
                result.add(new Map<String, Object>{
                    'id' => String.valueOf(claimValue),
                    'claimSubtype' => null,
                    'claimStatus' => null,
                    'claimReceivedDate' => null
                });
            }
        }
        return result;
    }

    private static List<Object> normalizeNotes(
        Object source,
        String fallbackWhen,
        String fallbackAuthor
    ) {
        List<Object> result = new List<Object>();
        for (Object noteValue : asList(source)) {
            if (noteValue == null) continue;

            Map<String, Object> note = asMap(noteValue);
            if (note != null) {
                String text = firstNonBlank(
                    stringValue(note.get('text')),
                    stringValue(note.get('note'))
                );
                if (String.isBlank(text)) continue;
                result.add(new Map<String, Object>{
                    'when' => firstNonBlank(
                        stringValue(note.get('when')),
                        stringValue(note.get('createdAt')),
                        fallbackWhen
                    ),
                    'author' => firstNonBlank(
                        stringValue(note.get('author')),
                        fallbackAuthor
                    ),
                    'text' => text
                });
            } else {
                String text = String.valueOf(noteValue);
                if (String.isBlank(text)) continue;
                result.add(new Map<String, Object>{
                    'when' => fallbackWhen,
                    'author' => fallbackAuthor,
                    'text' => text
                });
            }
        }
        return result;
    }

    private static List<Object> normalizeHistory(Object source) {
        List<Object> result = new List<Object>();
        for (Object value : asList(source)) {
            Map<String, Object> history = asMap(value);
            if (history != null) result.add(history);
        }
        return result;
    }

    private static Object deepCopy(Object value) {
        if (value == null) return new List<Object>();
        return JSON.deserializeUntyped(JSON.serialize(value));
    }

    private static List<Object> asList(Object value) {
        if (value == null) return new List<Object>();
        try {
            return (List<Object>) value;
        } catch (Exception ignored) {
            return new List<Object>{ value };
        }
    }

    private static Map<String, Object> asMap(Object value) {
        if (value == null) return null;
        try {
            return (Map<String, Object>) value;
        } catch (Exception ignored) {
            return null;
        }
    }

    private static String stringValue(Object value) {
        return value == null ? null : String.valueOf(value);
    }

    private static String firstNonBlank(String first, String second) {
        return String.isNotBlank(first) ? first : second;
    }

    private static String firstNonBlank(
        String first,
        String second,
        String third
    ) {
        return String.isNotBlank(first)
            ? first
            : (String.isNotBlank(second) ? second : third);
    }
}
