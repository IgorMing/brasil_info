import 'package:dio2/dio2.dart';

abstract class DataState<T> {
  final T? data;
  final DioError? error;

  const DataState({this.data, this.error});
}

class DataSucess<T> extends DataState<T> {
  const DataSucess(T data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(DioError error) : super(error: error);
}
