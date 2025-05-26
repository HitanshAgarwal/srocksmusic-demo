import 'package:cloud_firestore/cloud_firestore.dart';
import 'model.dart';

class ServicesRepository {
  final FirebaseFirestore firestore;

  ServicesRepository(this.firestore);

  Future<List<ServiceCard>> fetchServices() async {
    final snapshot = await firestore.collection('service-cards').get();
    return snapshot.docs.map((doc) => ServiceCard.fromFirestore(doc)).toList();
  }
}
