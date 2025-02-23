abstract class CrudInterface<T> {

  Future<bool> saveToIsar(T data);

  Future<bool> saveToFirebase(T data);

  Future<T> getFromIsar();

  Future<T> getFromFirebase();

  Future<bool> updateFromIsar(T data);

  Future<bool> updateFromFirebase(T data);

  Future<bool> removeFromIsar();

  Future<bool> removeFromFirebase();
}