enum LaundryRoomStateEnum { empty, loading, error, loaded }

sealed class LaundryRoomState<T> {
  LaundryRoomState(
      {required this.laundryRoomState, this.error, this.valueOrNull});

  T? valueOrNull;
  Object? error;
  LaundryRoomStateEnum laundryRoomState;

  T get value => valueOrNull!;
}

class Empty<T> extends LaundryRoomState<T> {
  Empty() : super(laundryRoomState: LaundryRoomStateEnum.empty);
}

class Loading<T> extends LaundryRoomState<T> {
  Loading() : super(laundryRoomState: LaundryRoomStateEnum.loading);
}

class Error<T> extends LaundryRoomState<T> {
  final Object errorObj;

  Error({required this.errorObj})
      : super(laundryRoomState: LaundryRoomStateEnum.error, error: errorObj);
}

class Loaded<T> extends LaundryRoomState<T> {
  final T data;

  Loaded({required this.data})
      : super(laundryRoomState: LaundryRoomStateEnum.loaded, valueOrNull: data);
}
