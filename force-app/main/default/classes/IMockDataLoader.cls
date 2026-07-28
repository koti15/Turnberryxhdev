/**
 * @description ISP: contract for loading raw record maps from a named strategy.
 *              Implementations may load from CMT, static resources, HTTP, etc.
 */
public interface IMockDataLoader {
    /**
     * @param strategyName  DeveloperName of the MockData__mdt record.
     * @return              Parsed list of field-value maps, one per record.
     */
    List<Map<String, Object>> load(String strategyName);
}