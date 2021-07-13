import 'package:flutter/material.dart';
import 'package:form_validation/form_validation.dart';
import 'package:hotel_management_system/bloc/client_bloc.dart';
import 'package:hotel_management_system/components/HeadingText.dart';
import 'package:hotel_management_system/components/filledRoundedButton.dart';
import 'package:hotel_management_system/components/outlinedRoundedButton.dart';
import 'package:hotel_management_system/components/passwordFieldComponent.dart';
import 'package:hotel_management_system/components/textFieldComponent.dart';
import 'package:hotel_management_system/utils/colorTheme.dart';
import 'package:provider/provider.dart';

class RegisterScreenComponent extends StatefulWidget {
  const RegisterScreenComponent({Key? key}) : super(key: key);

  @override
  _RegisterScreenComponentState createState() => _RegisterScreenComponentState();
}

class _RegisterScreenComponentState extends State<RegisterScreenComponent> {
  bool regulationsChecked = false;
  bool agreementChecked = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    ColorTheme myColors = ColorTheme();
    final bloc = Provider.of<ClientBloc>(context);
    bloc.formkey = _formKey;

    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/loginPhoto.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                        child: HeadingText(text: 'Dashboard'),
                      ),
                      Row(
                        children: [
                          StreamBuilder<String>(
                              stream: bloc.name,
                              builder: (context, snapshot) {
                                return CustomTextField(
                                  titleText: 'Imię',
                                  hintText: 'Podaj imię',
                                  validator: (value) {
                                    var validator = Validator(
                                      validators: [
                                        RequiredValidator(),
                                        MinLengthValidator(length: 3),
                                      ],
                                    );

                                    return validator.validate(
                                      context: context,
                                      label: 'Name',
                                      value: value,
                                    );
                                  },
                                  onChange: bloc.changeName,
                                );
                              }),
                          SizedBox(
                            width: 20,
                          ),
                          StreamBuilder<String>(
                              stream: bloc.surname,
                              builder: (context, snapshot) {
                                return CustomTextField(
                                  titleText: 'Nazwisko',
                                  hintText: 'Podaj nazwisko',
                                  onChange: bloc.changeSurname,
                                  validator: (value) {
                                    var validator = Validator(
                                      validators: [
                                        RequiredValidator(),
                                        MinLengthValidator(length: 3),
                                      ],
                                    );
                                    return validator.validate(
                                      context: context,
                                      label: 'Surname',
                                      value: value,
                                    );
                                  },
                                );
                              }),
                        ],
                      ),
                      Row(
                        //crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          StreamBuilder<String>(
                              stream: bloc.email,
                              builder: (context, snapshot) {
                                return CustomTextField(
                                  titleText: 'Email',
                                  hintText: 'Podaj adres email',
                                  onChange: bloc.changeEmail,
                                  validator: (value) {
                                    var validator = Validator(
                                      validators: [
                                        RequiredValidator(),
                                        EmailValidator(),
                                      ],
                                    );
                                    return validator.validate(
                                      context: context,
                                      label: 'Email',
                                      value: value,
                                    );
                                  },
                                );
                              }),
                          SizedBox(
                            width: 20,
                          ),
                          StreamBuilder<String>(
                              stream: bloc.repeatedEmail,
                              builder: (context, snapshot) {
                                return CustomTextField(
                                  titleText: 'Powtórz email',
                                  hintText: 'Podaj adres email',
                                  onChange: bloc.changeRepeatedEmail,
                                  validator: (value) {
                                    var validator = Validator(
                                      validators: [
                                        RequiredValidator(),
                                        EmailValidator(),
                                      ],
                                    );

                                    return validator.validate(
                                      context: context,
                                      label: 'Email',
                                      value: value,
                                    );
                                  },
                                );
                              }),
                        ],
                      ),
                      Row(
                        //crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          StreamBuilder<String>(
                              stream: bloc.number,
                              builder: (context, snapshot) {
                                return CustomTextField(
                                  titleText: 'Numer telefonu',
                                  hintText: 'Podaj numer telefonu',
                                  onChange: bloc.changeNumber,
                                  validator: (value) {
                                    var validator = Validator(
                                      validators: [
                                        RequiredValidator(),
                                        PhoneNumberValidator(),
                                      ],
                                    );

                                    return validator.validate(
                                      context: context,
                                      label: 'Phone number',
                                      value: value,
                                    );
                                  },
                                );
                              }),
                          SizedBox(
                            width: 20,
                          ),
                          StreamBuilder<String>(
                              stream: bloc.postCode,
                              builder: (context, snapshot) {
                                return CustomTextField(
                                  titleText: 'Kod pocztowy',
                                  hintText: 'Podaj kod pocztowy',
                                  onChange: bloc.changePostCode,
                                  validator: (value) {
                                    var validator = Validator(
                                      validators: [
                                        RequiredValidator(),
                                      ],
                                    );

                                    return validator.validate(
                                      context: context,
                                      label: 'PostCode',
                                      value: value,
                                    );
                                  },
                                );
                              }),
                        ],
                      ),
                      Row(
                        //crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          StreamBuilder<String>(
                              stream: bloc.password,
                              builder: (context, snapshot) {
                                return PasswordTextField(
                                  titleText: 'Hasło',
                                  hintText: 'Podaj hasło',
                                  onChange: bloc.changePassword,
                                  validator: (value) {
                                    var validator = Validator(
                                      validators: [
                                        RequiredValidator(),
                                        MinLengthValidator(length: 6),
                                      ],
                                    );

                                    return validator.validate(
                                      context: context,
                                      label: 'Password',
                                      value: value,
                                    );
                                  },
                                );
                              }),
                          SizedBox(
                            width: 20,
                          ),
                          StreamBuilder<String>(
                              stream: bloc.repeatedPassword,
                              builder: (context, snapshot) {
                                return PasswordTextField(
                                  titleText: 'Powtórz hasło',
                                  hintText: 'Podaj hasło',
                                  onChange: bloc.changeRepeatedPassword,
                                  validator: (value) {
                                    var validator = Validator(
                                      validators: [
                                        RequiredValidator(),
                                        MinLengthValidator(length: 6),
                                      ],
                                    );

                                    return validator.validate(
                                      context: context,
                                      label: 'Password',
                                      value: value,
                                    );
                                  },
                                );
                              }),
                        ],
                      ),
                      Row(
                        //crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          StreamBuilder<String>(
                              stream: bloc.country,
                              builder: (context, snapshot) {
                                return CustomTextField(
                                  titleText: 'Kraj',
                                  hintText: 'Podaj kraj',
                                  onChange: bloc.changeCountry,
                                  validator: (value) {
                                    var validator = Validator(
                                      validators: [
                                        RequiredValidator(),
                                        MinLengthValidator(length: 3),
                                      ],
                                    );

                                    return validator.validate(
                                      context: context,
                                      label: 'Country',
                                      value: value,
                                    );
                                  },
                                );
                              }),
                          SizedBox(
                            width: 20,
                          ),
                          StreamBuilder<String>(
                              stream: bloc.city,
                              builder: (context, snapshot) {
                                return CustomTextField(
                                  titleText: 'Miasto',
                                  hintText: 'Podaj miasto',
                                  onChange: bloc.changeCity,
                                  validator: (value) {
                                    var validator = Validator(
                                      validators: [
                                        RequiredValidator(),
                                      ],
                                    );

                                    return validator.validate(
                                      context: context,
                                      label: 'City',
                                      value: value,
                                    );
                                  },
                                );
                              }),
                        ],
                      ),
                      Row(
                        children: [
                          StreamBuilder<String>(
                              stream: bloc.address,
                              builder: (context, snapshot) {
                                return CustomTextField(
                                  titleText: 'Adres',
                                  hintText: 'Podaj adres',
                                  onChange: bloc.changeAddress,
                                  validator: (value) {
                                    var validator = Validator(
                                      validators: [
                                        RequiredValidator(),
                                      ],
                                    );

                                    return validator.validate(
                                      context: context,
                                      label: 'Address',
                                      value: value,
                                    );
                                  },
                                );
                              }),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: regulationsChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                regulationsChecked = value!;
                                bloc.changeRulesAccept(regulationsChecked);
                              });
                            },
                            activeColor: Theme.of(context).colorScheme.primary,
                          ),
                          Text(
                            'Akceptuję regulamin serwisu',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'RobotoMono',
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: agreementChecked,
                            onChanged: (bool? agreementValue) {
                              setState(() {
                                agreementChecked = agreementValue!;
                              });
                            },
                            activeColor: Theme.of(context).colorScheme.primary,
                          ),
                          Text(
                            'Wyrażam zgodę na udostępnianie moich danych w celach marketingowych',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'RobotoMono',
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 0, 50, 50),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(),
                            ),
                            OutlinedRoundedButton(
                              buttonText: 'powrót',
                              onPresesed: () => {Navigator.of(context).pop()},
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            FilledRoundedButton(
                              buttonText: 'stwórz konto',
                              onPresesd: () => bloc.submitClient(context),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
