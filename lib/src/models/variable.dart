class Variable {
  double value;

  Variable(this.value);

  double operator -(Variable val) => value - val.value;

  double operator +(Variable val) => value + val.value;

  double operator *(Variable val) => value * val.value;

  double operator /(Variable val) => value / val.value;

  @override
  bool operator ==(covariant other) =>
      other is Variable && value == other.value;

  @override
  int get hashCode => super.hashCode;
}
