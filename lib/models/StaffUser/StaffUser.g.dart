// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'StaffUser.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StaffUser> _$staffUserSerializer = new _$StaffUserSerializer();

class _$StaffUserSerializer implements StructuredSerializer<StaffUser> {
  @override
  final Iterable<Type> types = const [StaffUser, _$StaffUser];
  @override
  final String wireName = 'StaffUser';

  @override
  Iterable<Object?> serialize(Serializers serializers, StaffUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.login;
    if (value != null) {
      result
        ..add('login')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.firstName;
    if (value != null) {
      result
        ..add('firstName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('lastName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.role;
    if (value != null) {
      result
        ..add('role')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  StaffUser deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StaffUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'login':
          result.login = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$StaffUser extends StaffUser {
  @override
  final int? id;
  @override
  final String? login;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? role;

  factory _$StaffUser([void Function(StaffUserBuilder)? updates]) =>
      (new StaffUserBuilder()..update(updates)).build();

  _$StaffUser._({this.id, this.login, this.firstName, this.lastName, this.role})
      : super._();

  @override
  StaffUser rebuild(void Function(StaffUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StaffUserBuilder toBuilder() => new StaffUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StaffUser &&
        id == other.id &&
        login == other.login &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        role == other.role;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), login.hashCode), firstName.hashCode),
            lastName.hashCode),
        role.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StaffUser')
          ..add('id', id)
          ..add('login', login)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('role', role))
        .toString();
  }
}

class StaffUserBuilder implements Builder<StaffUser, StaffUserBuilder> {
  _$StaffUser? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _login;
  String? get login => _$this._login;
  set login(String? login) => _$this._login = login;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  StaffUserBuilder();

  StaffUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _login = $v.login;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _role = $v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StaffUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StaffUser;
  }

  @override
  void update(void Function(StaffUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StaffUser build() {
    final _$result = _$v ??
        new _$StaffUser._(
            id: id,
            login: login,
            firstName: firstName,
            lastName: lastName,
            role: role);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
