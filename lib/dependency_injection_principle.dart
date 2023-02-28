// BAD PRACTISE

class FileManager {
  void secureFile() {
    AlgoEs algoEs = AlgoEs();
    algoEs.ABC();
    // Do something here;
  }
}

class FileManager {
  void secureFile() {
    AlgoEs algoEs = AlgoEs();
    algoEs.EDF();
    // Do something here;
  }
}


// GOOD PRACTISE
// Interface
abstract class EncryptionAlgorithm {
  String encrypt(); // abstraction
}
// Concrete class
class AlgoAES implements EncryptionAlgorithm{
  @override
  String encrypt(){
    ABC();
  }
}

// Concrete class
class AlgoRSA implements EncryptionAlgorithm{
  @override
  String encrypt(){
    DEF();
  }
}

// Dependency Injection

class FileManager{
  void secureFile() {
    EncryptionAlgorithm encryptionAlgorithm = AlgoAES();
    encryptionAlgorithm.encrypt();
  }
}
class FileManager{
  void secureFile() {
    EncryptionAlgorithm encryptionAlgorithm = AlgoRSA();
    encryptionAlgorithm.encrypt();
  }
}
