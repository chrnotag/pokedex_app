abstract class CrudInterface<T> {

  Future<bool> saveToFirebase(T data);

  Future<T> getFromFirebase();

  Future<bool> updateFromFirebase(T data);

  Future<bool> removeFromFirebase();
}