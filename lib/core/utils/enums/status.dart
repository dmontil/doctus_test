enum Status {
  initial,
  loading,
  error,
  success,
}

extension CheckStatus on Status {
  bool get isLoading => this == Status.loading;
  bool get isInitial => this == Status.initial;
  bool get isSuccess => this == Status.success;
  bool get isError => this == Status.error;
}
