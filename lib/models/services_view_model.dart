import 'package:flutter/material.dart';
import 'model.dart';
import 'services_repository.dart';

class ServicesViewModel extends ChangeNotifier {
  final ServicesRepository repository;

  ServicesViewModel(this.repository);

  List<ServiceCard> _services = [];
  bool _isLoading = true;

  List<ServiceCard> get services => _services;
  bool get isLoading => _isLoading;

  Future<void> loadServices() async {
    _isLoading = true;
    notifyListeners();

    _services = await repository.fetchServices();

    _isLoading = false;
    notifyListeners();
  }
}
