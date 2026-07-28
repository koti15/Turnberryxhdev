/**
 * @description Typed exception for all MockData factory errors.
 *              Allows callers to catch factory errors separately from DML exceptions.
 */
public class MockDataException extends Exception {
    @TestVisible static final string EXCEPTION_TYPE = 'MockDataFactory';
}